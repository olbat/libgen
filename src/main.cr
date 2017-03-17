require "./lib_generator/**"

abort "usage: #{$0} <lib_name> <definition_files...> <output_dir>"\
  unless ARGV.size > 2

lib_name = ARGV[0]
output_dir = ARGV[-1]
definitions = {} of String => LibGenerator::Definition

ARGV[1..-2].each do |filepath|
  abort "Error: cannot read #{filepath}" unless File.readable?(filepath)

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

sources = LibGenerator::Generator.generate(
  lib_name: lib_name,
  definitions: definitions,
  transformers: [
    LibGenerator::FunRenamerTransformer.new(/_\d+$/, ""),
    LibGenerator::ExpressionsSorterTransformer.new,
  ],
)

# TODO: catch possible Errno ?
Dir.mkdir_p(output_dir, mode = 0o755) unless Dir.exists?(output_dir)

sources.each do |filename, source|
  File.open(File.join(output_dir, filename), "w") do |io|
    io.puts(source)
  end
end
