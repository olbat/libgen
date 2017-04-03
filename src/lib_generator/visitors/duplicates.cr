require "compiler/crystal/syntax"

class LibGenerator::DuplicatesVisitor < Crystal::Visitor
  def initialize(@nodes : Array(Crystal::ASTNode))
  end

  def visit(node)
    @nodes.delete(node)
    true
  end
end
