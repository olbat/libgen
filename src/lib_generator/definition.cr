require "compiler/crystal/syntax"
require "yaml"
require "json"

class LibGenerator::Definition
  # crystal_lib
  getter prefixes : Array(String)
  getter includes : Array(String)
  getter flags :  Array(String)?
  # generator
  getter lib_name : String
  getter description : String?
  getter ldflags : Hash(String, String)? #libname: -flag
  property! filename : String
  property! ast : Crystal::ASTNode

  YAML.mapping({
    prefixes: { type: Array(String) },
    includes: { type: Array(String) },
    flags: { type: Array(String), nilable: true },
    lib_name: { type: String },
    description: { type: String, nilable: true },
    ldflags: { type: Hash(String, String), nilable: true },
  })

  JSON.mapping({
    prefixes: { type: Array(String) },
    includes: { type: Array(String) },
    flags: { type: Array(String), nilable: true },
    lib_name: { type: String },
    description: { type: String, nilable: true },
    ldflags: { type: Hash(String, String), nilable: true },
  })

  # TODO: to be implemented
  #def self.from_ast(ast : Crystal::ASTNode)
  #end

  def initialize(
    @prefixes : Array(String), @includes : Array(String), @lib_name : String,
    @flags = @description = @ldflags = @filename = @ast = nil
  )
  end

  def c_includes
    @includes.map{|i| "#include <#{i}>" }.join("\n")
  end
end
