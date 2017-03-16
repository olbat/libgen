require "compiler/crystal/syntax"

class LibGenerator::FunRenamerTransformer < Crystal::Transformer
  def initialize(@pattern : Regex, @replacement : String)
  end

  def transform(node : Crystal::FunDef)
    node.name = node.name.gsub(@pattern, @replacement)
    node
  end
end
