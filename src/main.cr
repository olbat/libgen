require "./lib_generator/**"

output_dir = "icu"
lib_name = "LibICU"

sources = LibGenerator::Generator.generate(
  lib_name: lib_name,
  definitions: {
    "ucsdet.cr" => LibGenerator::Definition.new(
      includes: ["unicode/ucsdet.h"], prefixes: ["ucsdet_"]
    ),
    "udat.cr" => LibGenerator::Definition.new(
      includes: ["unicode/udat.h"], prefixes: ["udat_"]
    ),
    "ucurr.cr" => LibGenerator::Definition.new(
      includes: ["unicode/ucurr.h"], prefixes: ["ucurr_"]
    ),
  },
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
