require "./lib_generator/**"

LibGenerator::Generator.generate(
  lib_name: "LibICU",
  output_dir: "icu",
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
