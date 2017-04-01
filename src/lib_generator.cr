require "./lib_generator/**"

module LibGenerator
  def self.run
    abort "usage: #{$0} [<lib_file>]" if ARGV.size > 1 || ARGV[0]? == "-h"

    # parse the library description file
    lib_file = ARGV[0]? || "lib.yml"
    abort "Error: cannot read #{lib_file}" unless File.readable?(lib_file)
    puts "loading library from #{lib_file}"
    library = nil
    begin
      case (extname = File.extname(lib_file))
      when ".yml", ".yaml"
        library = LibGenerator::Library.from_yaml(File.read(lib_file))
      when ".json"
        library = LibGenerator::Library.from_json(File.read(lib_file))
      else
        abort "Error: #{lib_file} unsupported file format #{extname}"
      end
    rescue ex : YAML::ParseException | JSON::ParseException | ArgumentError
      abort "Error: invalid library format #{lib_file} (#{ex.message})"
    end
    # FIXME: ugly hack, figure out why library has the Nil compile type here
    abort "Error: invalid library description" unless library

    # change dir if necessary (paths in the lib description are relative to
    # the lib file)
    lib_dir = File.dirname(lib_file)
    if lib_dir != "." && lib_dir != Dir.current
      puts "moving to #{lib_dir}/"
      Dir.cd(lib_dir)
    end

    # parse definition files
    definitions = {} of String => LibGenerator::Definition
    library.definitions.try do |ds|
      ds.each do |basename, definition|
        puts "loading #{basename} definition from #{lib_file}"
        definitions["#{basename}.cr"] = definition
      end
    end
    if (includes = library.includes)
      abort "Error: no file to include" if includes.empty?
      inc_files = Dir[includes]
      abort "Error: file not found #{includes.join(", ")}" if inc_files.empty?

      inc_files.each do |filepath|
        abort "Error: cannot read #{filepath}" unless File.readable?(filepath)

        extname = File.extname(filepath)
        basename = File.basename(filepath, extname)
        filename = "#{basename}.cr"
        puts "loading #{basename} definition from #{filepath}"

        begin
          case extname
          when ".yml", ".yaml"
            definition = LibGenerator::Definition.from_yaml(File.read(filepath))
          when ".json"
            definition = LibGenerator::Definition.from_json(File.read(filepath))
          when ".cr"
            definition = LibGenerator::Definition.from_crystal(File.read(filepath))
          else
            abort "Error: #{filepath} unsupported file format #{extname}"
          end
        rescue ex : YAML::ParseException | JSON::ParseException | ArgumentError
          abort "Error: #{filepath} invalid definition format (#{ex.message})"
        end

        if definitions[filename]?
          abort "Error: #{filename} has already been defined in #{lib_file}"
        end

        definitions[filename] = definition
      end
    end

    transformers = [] of Crystal::Transformer
    transformers << LibGenerator::SortTransformer.new
    library.rename.try{|t| transformers << t }

    # generate the Crystal code
    begin
      sources = LibGenerator::Generator.generate(
        library: library,
        definitions: definitions,
        transformers: transformers,
      )
    rescue ex : ArgumentError
      abort "Error: #{ex.message}"
    end

    # write Crystal source files
    destdir = library.destdir
    Dir.mkdir_p(destdir, mode = 0o755) unless Dir.exists?(destdir)

    sources.each do |filename, source|
      filepath = File.join(destdir, filename)
      puts "generate #{filepath}"
      File.open(filepath, "w"){|io| io.puts(source) }
    end
  end
end
