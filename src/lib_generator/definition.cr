require "compiler/crystal/syntax"
require "yaml"
require "json"

class LibGenerator::Definition
  # crystal_lib
  getter prefixes : Array(String)?
  getter includes : Array(String)?
  getter flags :  Array(String)?
  # generator
  getter description : String?
  getter ldflags : Hash(String, String)? #libname: -flag
  property! filename : String
  property! ast : Crystal::ASTNode

  YAML.mapping({
    prefixes: { type: Array(String), nilable: true },
    includes: { type: Array(String), nilable: true },
    flags: { type: Array(String), nilable: true },
    description: { type: String, nilable: true },
    ldflags: { type: Hash(String, String), nilable: true },
  })

  JSON.mapping({
    prefixes: { type: Array(String), nilable: true },
    includes: { type: Array(String), nilable: true },
    flags: { type: Array(String), nilable: true },
    description: { type: String, nilable: true },
    ldflags: { type: Hash(String, String), nilable: true },
  })

  # TODO: to be implemented
  #def self.from_ast(ast : Crystal::ASTNode)
  #end

  def initialize(
    @prefixes = nil, @includes = nil, @flags = nil,
    @description = nil, @ldflags = nil, @filename = nil, @ast = nil
  )
  end

  def c_includes
    if includes = @includes
      includes.map{|i| "#include <#{i}>" }.join("\n")
    end
  end
end
