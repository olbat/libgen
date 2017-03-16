require "compiler/crystal/syntax"

class LibGenerator::ExpressionsSorterTransformer < Crystal::Transformer
  def transform(node : Crystal::Expressions)
    node.expressions.sort_by!(&.to_s)
    node
  end
end
