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
  getter ldflags : Hash(String, String) | String | Nil

  YAML.mapping({
    includes: { type: Array(String), nilable: true },
    prefixes: { type: Array(String), nilable: true },
    flags: { type: Array(String), nilable: true },
    description: { type: String, nilable: true },
    ldflags: { type: Hash(String, String) | String, nilable: true },
  })

  JSON.mapping({
    includes: { type: Array(String), nilable: true },
    prefixes: { type: Array(String), nilable: true },
    flags: { type: Array(String), nilable: true },
    description: { type: String, nilable: true },
    ldflags: { type: Hash(String, String) | String, nilable: true },
  })

  # TODO: to be implemented
  #def self.from_crystal(source : String)
  #end

  def initialize(
    @prefixes = nil, @includes = nil, @flags = nil,
    @description = nil, @ldflags = nil
  )
  end

  def parse_lib : Crystal::ASTNode
    includes = @includes.not_nil!
    c_includes = includes.map{|i| "#include <#{i}>" }.join("\n")

    nodes = CrystalLib::Parser.parse(c_includes)
    prefix_matcher = CrystalLib::PrefixMatcher.new(@prefixes.not_nil!, false)

    CrystalLib::PrefixImporter.import(nodes, prefix_matcher)\
      .as(Crystal::Expressions)
  end
end
