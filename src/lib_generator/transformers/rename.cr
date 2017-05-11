require "compiler/crystal/syntax"

# TODO: find a better way to do it
def Regex.new(pp : YAML::PullParser)
  new pp.read_scalar
end

# ditto
def Regex.new(pp : JSON::PullParser)
  new pp.read_string
end

class LibGenerator::RenameTransformer < Crystal::Transformer
  getter rules : Hash(String, Array(NamedTuple(pattern: Regex, replacement: String)))

  {% for klass in ["YAML", "JSON"] %}
  {{klass.id}}.mapping(
    rules: Hash(String, Array(NamedTuple(pattern: Regex, replacement: String))),
  )

  def initialize(pp : {{klass.id}}::PullParser)
    previous_def
    check_attr!
  end
  {% end %}

  def initialize(@rules : Hash(String, Array(NamedTuple(pattern: Regex, replacement: String))))
    check_attr!
  end

  protected def check_attr!
    @rules.each do |type, rules|
      unless type =~ /^(Fun|Type|CStructOrUnion|Enum)Def|Alias|ExternalVar|Arg|\*$/
        raise ArgumentError.new("Invalid AST node type #{type}")
      end
      raise ArgumentError.new("the rules list cannot be empty") if rules.empty?
    end
  end

  def match?(type : String, node : Crystal::ASTNode)
    type == "*" || node.class_desc == type
  end

  def transform(node : (Crystal::FunDef | Crystal::TypeDef | Crystal::CStructOrUnionDef | Crystal::Alias | Crystal::ExternalVar))
    @rules.each do |type, rules|
      rules.each do |rule|
        if match?(type, node)
          node.name = node.name.gsub(rule[:pattern], rule[:replacement])
        end
      end
    end
    super
  end

  def transform(node : Crystal::EnumDef)
    @rules.each do |type, rules|
      rules.each do |rule|
        if match?(type, node)
          node.name.names = node.name.names.map(&.gsub(rule[:pattern], rule[:replacement]))
        end
      end
    end
    super
  end

  def transform(node : Crystal::Arg) # used in EnumDef
    @rules.each do |type, rules|
      rules.each do |rule|
        if match?(type, node)
          node.name = node.name.gsub(rule[:pattern], rule[:replacement])
          node.external_name = node.name
        end
      end
    end
    super
  end
end
