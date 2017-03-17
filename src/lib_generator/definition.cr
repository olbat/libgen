require "compiler/crystal/syntax"
require "yaml"
require "json"

# TODO: create a class with just description, ldflags and ast and extend it ?
class LibGenerator::Definition
  # crystal_lib
  getter includes : Array(String)?
  getter prefixes : Array(String)?
  getter flags :  Array(String)?
  # generator
  getter description : String?
  getter ldflags : Hash(String, String)? #libname: -flag ?
  property! ast : Crystal::ASTNode

  YAML.mapping({
    includes: { type: Array(String), nilable: true },
    prefixes: { type: Array(String), nilable: true },
    flags: { type: Array(String), nilable: true },
    description: { type: String, nilable: true },
    ldflags: { type: Hash(String, String), nilable: true },
  })

  JSON.mapping({
    includes: { type: Array(String), nilable: true },
    prefixes: { type: Array(String), nilable: true },
    flags: { type: Array(String), nilable: true },
    description: { type: String, nilable: true },
    ldflags: { type: Hash(String, String), nilable: true },
  })

  # TODO: to be implemented
  #def self.from_crystal(ast : Crystal::ASTNode)
  #end

  def initialize(
    @prefixes = nil, @includes = nil, @flags = nil,
    @description = nil, @ldflags = nil, @ast = nil
  )
  end

  def c_includes
    if includes = @includes
      includes.map{|i| "#include <#{i}>" }.join("\n")
    end
  end
end
