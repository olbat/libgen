require "compiler/crystal/syntax"

# TODO: find a better way to do it
def Regex.new(ypp : YAML::PullParser)
  new ypp.read_scalar
end
def Regex.new(jpp : JSON::PullParser)
  new jpp.read_string
end

class LibGenerator::RenameTransformer < Crystal::Transformer
  getter rules : Hash(String,
    Array(NamedTuple(pattern: Regex, replacement: String)))

  YAML.mapping(
    rules: Hash(String, Array(NamedTuple(pattern: Regex, replacement: String))),
  )

  JSON.mapping(
    rules: Hash(String, Array(NamedTuple(pattern: Regex, replacement: String))),
  )

  def initialize(
    @rules : Hash(String, Array(NamedTuple(pattern: Regex, replacement: String)))
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
    @rules.each do |type, rules|
      rules.each do |rule|
        if match?(type, node)
          node.name = node.name.gsub(rule[:pattern], rule[:replacement])
        end
      end
    end
    node
  end

  def transform(node : Crystal::EnumDef)
    @rules.each do |type, rules|
      rules.each do |rule|
        if match?(type, node)
          node.name.names = \
            node.name.names.map(&.gsub(rule[:pattern], rule[:replacement]))
        end
      end
    end
    node
  end
end
