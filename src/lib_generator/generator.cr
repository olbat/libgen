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

    def initialize(
      @definition : LibGenerator::Definition, @ast : Crystal::ASTNode,
      @transformers = [] of Crystal::Transformer
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
      Crystal.format(source.to_s)
    end
  end

  def self.generate(
    lib_name : String,
    definitions : Hash(String, LibGenerator::Definition),
    transformers : Array(Crystal::Transformer) = [] of Crystal::Transformer,
  )
    ret = {} of String => String
    libs = {} of String => Library

    counter = LibGenerator::NodeCounter.new

    definitions.each do |fn, de|
      libs[fn] = Library.new(definition: de, ast: de.gen_crystal_ast)
      libs[fn].transformers.concat(transformers)
      libs[fn].ast.accept(LibGenerator::NodeCountVisitor.new(counter))
    end

    # extract the AST nodes that several definitions have in common
    common_nodes = counter.select{|_,c| c > 1 }.map{|n,_| n }

    # if there is some common nodes, add a transformer to remove them: they will
    # be grouped in a common definition/file
    unless common_nodes.empty?
      # TODO: use a more specific error class ?
      raise ArgumentError.new("The #{COMMON_FILENAME} filename is reserved "\
        "for the lib") if definitions.has_key?(COMMON_FILENAME)

      nrt = LibGenerator::NodeRemoverTransformer.new(common_nodes.dup)
      libs.each{|_, li| li.transformers.unshift(nrt) }

      libs[COMMON_FILENAME] = Library.new(
        definition: LibGenerator::Definition.new(
          description: "Common definitions of the #{lib_name} lib",
        ),
        ast: Crystal::Expressions.new(common_nodes),
        transformers: transformers.dup,
      )
    end

    # transform (sanitize, ...) each definition and generate the Crystal code
    libs.each do |filename, li|
      li.transform
      ret[filename] = li.generate(lib_name)
    end

    ret
  end
end
