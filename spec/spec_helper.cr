require "spec"
require "../src/lib_generator"

# FIXME: ugly hack, find something else
def ast_node(source : String) : Crystal::ASTNode
  Crystal::Parser.parse("lib L\n#{source}\nend").as(Crystal::LibDef).body
end

def ast_nodes(sources : Array(String)) : Array(Crystal::ASTNode)
  Crystal::Parser.parse("lib L\n#{sources.join("\n")}\nend").as(Crystal::LibDef).body.as(Crystal::Expressions).expressions
end
