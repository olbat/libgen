require "compiler/crystal/syntax"

class LibGenerator::SortTransformer < Crystal::Transformer
  def transform(node : Crystal::Expressions)
    node.expressions.sort_by!(&.to_s)
    super
  end

  # do not sort union and struct fields
  def transform(node : Crystal::CStructOrUnionDef)
    node
  end
end
