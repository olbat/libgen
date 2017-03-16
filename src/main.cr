require "./lib_generator/**"

LibGenerator::Generator.generate(
  definitions: [
    LibGenerator::Definition.new(
      lib_name: "LibICU", includes: ["unicode/ucsdet.h"], prefixes: ["ucsdet_"]
    ),
    LibGenerator::Definition.new(
      lib_name: "LibICU", includes: ["unicode/udat.h"], prefixes: ["udat_"]
    ),
    LibGenerator::Definition.new(
      lib_name: "LibICU", includes: ["unicode/ucurr.h"], prefixes: ["ucurr_"]
    ),
  ]
)
