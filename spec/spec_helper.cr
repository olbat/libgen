require "spec"
require "../src/lib_generator"

# FIXME: ugly hack, find something else
def ast_node(source : String) : Crystal::ASTNode
  Crystal::Parser.parse("lib L\n#{source}\nend").as(Crystal::LibDef).body
end

def ast_exprs(sources : (Array(String) | String)) : Crystal::Expressions
  sources = sources.join("\n") if sources.is_a?(Array(String))
  body = Crystal::Parser.parse("lib L\n#{sources}\nend").as(Crystal::LibDef).body
  body = Crystal::Expressions.new([body]) unless body.as?(Crystal::Expressions)
  body.as(Crystal::Expressions)
end

def ast_nodes(sources : (Array(String) | String)) : Array(Crystal::ASTNode)
  ast_exprs(sources).expressions
end
