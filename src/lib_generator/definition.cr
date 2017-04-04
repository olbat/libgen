require "crystal_lib/clang"
require "crystal_lib/crystal_lib"
require "compiler/crystal/syntax"
require "yaml"
require "json"

class LibGenerator::Definition
  # crystal_lib
  getter includes : Array(String)
  getter prefixes : Array(String)
  getter flags : Array(String)?
  # generator
  getter description : String?

  YAML.mapping({
    includes:    {type: Array(String)},
    prefixes:    {type: Array(String)},
    flags:       {type: Array(String), nilable: true},
    description: {type: String, nilable: true},
  })

  JSON.mapping({
    includes:    {type: Array(String)},
    prefixes:    {type: Array(String)},
    flags:       {type: Array(String), nilable: true},
    description: {type: String, nilable: true},
  })

  def self.from_crystal(source : String)
    # TODO: take in account possible funs in the lib declaration
    ltr = LibGenerator::CrystalLibTransformer.new
    Crystal::Parser.parse(source).transform(ltr)
    new(ltr.prefixes, ltr.headers.scan(/<(.+)>/).flatten.map(&.[1]), ltr.flags)
  end

  def initialize(@prefixes = [] of String, @includes = [] of String, @flags = [] of String, @description = nil)
  end

  def parse_lib : Crystal::ASTNode
    includes = @includes.not_nil!
    prefixes = @prefixes.not_nil!
    raise ArgumentError.new("@includes should not be empty") if includes.empty?
    raise ArgumentError.new("@prefixes should not be empty") if prefixes.empty?

    c_includes = includes.map { |i| "#include <#{i}>" }.join("\n")

    nodes = CrystalLib::Parser.parse(c_includes, @flags || [] of String)
    prefix_matcher = CrystalLib::PrefixMatcher.new(prefixes, false)

    CrystalLib::PrefixImporter.import(nodes, prefix_matcher).tap do |ast|
      if ast.is_a?(Crystal::Nop)
        raise ArgumentError.new("Nothing to import from #{includes.join(", ")}" \
                                " #{@description.try { |d| "(#{d})" }}")
      end
    end
  end
end
