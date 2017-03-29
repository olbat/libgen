require "./lib_generator/**"

module LibGenerator
  def self.run
    abort "usage: #{$0} [<lib_file>]" if ARGV.size > 1 || ARGV[0]? == "-h"

    lib_file = ARGV[0]? || "lib.yml"
    abort "Error: cannot read #{lib_file}" unless File.readable?(lib_file)
    puts "loading library from #{lib_file}"
    library = LibGenerator::Library.from_yaml(File.read(lib_file))

    lib_dir = File.dirname(lib_file)
    if lib_dir != "." && lib_dir != Dir.current
      puts "moving to #{lib_dir}/"
      Dir.cd(lib_dir)
    end

    definitions = {} of String => LibGenerator::Definition


    abort "Error: files to include" if library.includes.empty?
    inc_files = Dir[library.includes]
    abort "Error: file not found #{library.includes.join(", ")}"\
      if inc_files.empty?

    inc_files.each do |filepath|
      abort "Error: cannot read #{filepath}" unless File.readable?(filepath)
      puts "loading definition from #{filepath}"

      extname = File.extname(filepath)
      filename = "#{File.basename(filepath, extname)}.cr"

      begin
        case extname
        when ".yml", ".yaml"
          definition = LibGenerator::Definition.from_yaml(File.read(filepath))
        when ".json"
          definition = LibGenerator::Definition.from_json(File.read(filepath))
        when ".cr"
          abort "Error: #{filepath} importing definitions from Crystal code "\
            "is not supported yet"
        else
          abort "Error: #{filepath} unsupported file format #{extname}"
        end
      rescue ex : YAML::ParseException | JSON::ParseException
        abort "Error: #{filepath} invalid definition format (#{ex.message})"
      end

      definitions[filename] = definition
    end

    transformers = [] of Crystal::Transformer
    transformers << LibGenerator::ExpressionsSorterTransformer.new
    library.rewrite.try{|t| transformers << t }

    sources = LibGenerator::Generator.generate(
      library: library,
      definitions: definitions,
      transformers: transformers,
    )

    # TODO: catch possible Errno ?
    destdir = library.destdir
    Dir.mkdir_p(destdir, mode = 0o755) unless Dir.exists?(destdir)

    sources.each do |filename, source|
      filepath = File.join(destdir, filename)
      puts "generate #{filepath}"
      File.open(filepath, "w"){|io| io.puts(source) }
    end
  end
end
