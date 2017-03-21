require "compiler/crystal/syntax"
require "compiler/crystal/tools/formatter"

# TODO: singleton? + split generate in several methods ?
#       (get_common_nodes, transform, ...)
class LibGenerator::Generator
  COMMON_FILENAME = "common.cr"

  class Library
    getter definition : LibGenerator::Definition
    getter transformers : Array(Crystal::Transformer)
    property! ast : Crystal::ASTNode
    property! src : String

    def initialize(
      @definition : LibGenerator::Definition,
      @transformers = [] of Crystal::Transformer,
      @ast = nil, @src = nil,
    )
    end

    def transform
      @transformers.each do |tr|
        @ast = @ast.not_nil!.transform(tr).as(Crystal::Expressions)
      end
      self
    end

    def generate(lib_name : String) : String
      # TODO: generate attributes
      libnode = Crystal::LibDef.new(lib_name, @ast)
      libnode.doc = @definition.description
      source = IO::Memory.new

      libnode.to_s(source, emit_doc: true)
      @src = Crystal.format(source.to_s)
    end
  end

  getter lib_name : String
  getter libs : Hash(String, Library)
  getter transformers : Array(Crystal::Transformer)

  def initialize(
    @lib_name : String,
    definitions : Hash(String, LibGenerator::Definition),
    @transformers : Array(Crystal::Transformer) = [] of Crystal::Transformer,
  )
    @libs = {} of String => Library

    definitions.each do |fn, de|
      # TODO: use a more specific error class ?
      raise ArgumentError.new("The #{COMMON_FILENAME} filename is reserved") \
        if fn == COMMON_FILENAME
      @libs[fn] = Library.new(definition: de)
      @libs[fn].transformers.concat(transformers)
    end
  end

  def self.generate(
    lib_name : String,
    definitions : Hash(String, LibGenerator::Definition),
    transformers : Array(Crystal::Transformer) = [] of Crystal::Transformer,
  )
    self.new(lib_name, definitions, transformers).generate()
  end

  def generate : Hash(String, String)
    parse_libs()
    group_common_nodes()
    transform_libs()
    generate_libs()

    @libs.map{|fn, li| { fn, li.src } }.to_h
  end

  def parse_libs
    @libs.each do |fn, de|
      de.ast = de.definition.parse_lib()
    end
    self
  end

  def transform_libs
    @libs.each do |filename, li|
      li.transform()
    end
  end

  def generate_libs
    @libs.each do |filename, li|
      li.generate(@lib_name)
    end
  end

  def extract_common_nodes : Array(Crystal::ASTNode)
    # extract common AST nodes using a visitor
    counter = LibGenerator::NodeCounter.new
    @libs.each do |fn, li|
      li.ast.accept(LibGenerator::NodeCountVisitor.new(counter))
    end
    counter.select{|_,c| c > 1 }.map{|n,_| n }
  end

  def group_common_nodes
    # if there is some common AST nodes in the libs, add a transformer
    # to remove them: they will be grouped in a common definition/file
    unless (common_nodes = extract_common_nodes()).empty?
      libs = @libs

      # delete the common AST nodes from every libs
      nrt = LibGenerator::NodeRemoverTransformer.new(common_nodes.dup)
      libs.each{|_, li| li.transformers.unshift(nrt) }

      # create a lib containing only common AST nodes
      libs[COMMON_FILENAME] = Library.new(
        definition: LibGenerator::Definition.new(
          description: "Common definitions of the #{lib_name} lib",
        ),
        ast: Crystal::Expressions.new(common_nodes),
        transformers: @transformers.dup,
      )
    end

    self
  end
end
