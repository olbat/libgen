require "./lib_generator/**"

module LibGenerator
  def self.run
    abort "usage: #{$0} [<lib_file>]" if ARGV.size > 1 || ARGV[0]? == "-h"

    lib_file = ARGV[0]? || "lib.yml"
    abort "Error: cannot read #{lib_file}" unless File.readable?(lib_file)
    library = LibGenerator::Library.from_yaml(File.read(lib_file))

    definitions = {} of String => LibGenerator::Definition

    inc_files = Dir[library.includes]
    abort "Error: no include file" if inc_files.empty?

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

    transformers = [
      LibGenerator::FunRenamerTransformer.new(/_\d+$/, ""),
      LibGenerator::ExpressionsSorterTransformer.new,
    ]

    output_name = library.name.underscore

    sources = LibGenerator::Generator.generate(
      library: library,
      definitions: definitions,
      transformers: transformers,
      common_filename: "#{output_name}.cr",
    )

    # TODO: catch possible Errno ?
    output_dir = File.join("src", output_name)
    Dir.mkdir_p(output_dir, mode = 0o755) unless Dir.exists?(output_dir)

    sources.each do |filename, source|
      filepath = File.join(output_dir, filename)
      puts "generate #{filepath}"
      File.open(filepath, "w"){|io| io.puts(source) }
    end
  end
end
