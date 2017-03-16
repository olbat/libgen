require "./lib_generator/**"

LibGenerator::Generator.generate(
  lib_name: "LibICU",
  definitions: [
    LibGenerator::Definition.new(
      includes: ["unicode/ucsdet.h"], prefixes: ["ucsdet_"]
    ),
    LibGenerator::Definition.new(
      includes: ["unicode/udat.h"], prefixes: ["udat_"]
    ),
    LibGenerator::Definition.new(
      includes: ["unicode/ucurr.h"], prefixes: ["ucurr_"]
    ),
  ]
)
