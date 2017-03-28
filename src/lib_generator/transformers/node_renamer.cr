require "compiler/crystal/syntax"

class LibGenerator::NodeRenamerTransformer < Crystal::Transformer
  def initialize(
    @rules : Hash(String, NamedTuple(pattern: Regex, replacement: String))
  )
    @rules.keys.each do |type|
      unless type =~ /^(Fun|Type|CStructOrUnion|Alias|ExternalVar)Def|\*$/
        raise ArgumentError.new("Invalid AST node type #{type}")
      end
    end
  end

  def match?(type : String, node : Crystal::ASTNode)
    type == "*" || node.class_desc == type
  end

  def transform(node : (Crystal::FunDef | Crystal::TypeDef \
    | Crystal::CStructOrUnionDef | Crystal::Alias | Crystal::ExternalVar)
  )
    @rules.each do |type, rule|
      if match?(type, node)
        node.name = node.name.gsub(rule[:pattern], rule[:replacement])
      end
    end
    node
  end

  def transform(node : Crystal::EnumDef)
    @rules.each do |type, rule|
      if match?(type, node)
        node.name.names = \
          node.name.names.map(&.gsub(rule[:pattern], rule[:replacement]))
      end
    end
    node
  end
end
