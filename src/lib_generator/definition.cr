# FIXME: use the shard
require "../crystal_lib/src/clang"
require "../crystal_lib/src/crystal_lib"
require "compiler/crystal/syntax"
require "yaml"
require "json"

class LibGenerator::Definition
  # crystal_lib
  getter includes : Array(String)?
  getter prefixes : Array(String)?
  getter flags :  Array(String)?
  # generator
  getter description : String?

  YAML.mapping({
    includes: { type: Array(String), nilable: true },
    prefixes: { type: Array(String), nilable: true },
    flags: { type: Array(String), nilable: true },
    description: { type: String, nilable: true },
  })

  JSON.mapping({
    includes: { type: Array(String), nilable: true },
    prefixes: { type: Array(String), nilable: true },
    flags: { type: Array(String), nilable: true },
    description: { type: String, nilable: true },
  })

  def self.from_crystal(source : String)
    # TODO: take in account possible funs in the lib declaration
    ltr = LibGenerator::CrystalLibTransformer.new
    Crystal::Parser.parse(source).transform(ltr)
    new(ltr.prefixes, ltr.headers.scan(/<(.+)>/).flatten.map(&.[1]), ltr.flags)
  end

  def initialize(
    @prefixes = nil, @includes = nil, @flags = nil, @description = nil
  )
  end

  def parse_lib : Crystal::ASTNode
    includes = @includes.not_nil!
    c_includes = includes.map{|i| "#include <#{i}>" }.join("\n")

    nodes = CrystalLib::Parser.parse(c_includes)
    prefix_matcher = CrystalLib::PrefixMatcher.new(@prefixes.not_nil!, false)

    CrystalLib::PrefixImporter.import(nodes, prefix_matcher).tap do |ast|
      if ast.is_a?(Crystal::Nop)
        raise ArgumentError.new("Nothing to import from #{includes.join(", ")} \
          #{@description.try{|d| "(#{d})" } }")
      end
    end
  end
end
