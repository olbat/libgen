require "compiler/crystal/syntax"

class LibGenerator::NodeCountVisitor < Crystal::Visitor
  def initialize(@counter : NodeCounter)
  end

  def visit(node : (Crystal::FunDef | Crystal::TypeDef \
    | Crystal::CStructOrUnionDef | Crystal::EnumDef \
    | Crystal::Alias | Crystal::ExternalVar)
  )
    @counter.inc(node)
    false
  end

  def visit(node)
    true
  end
end
