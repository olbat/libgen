require "compiler/crystal/syntax"
require "compiler/crystal/tools/formatter"

class LibGenerator::Generator
  class Lib
    getter library : LibGenerator::Library
    getter definition : LibGenerator::Definition
    getter transformers : Array(Crystal::Transformer)
    property! requires : Array(String)
    property! ast : Crystal::ASTNode
    property! source : String

    def initialize(
      @library : LibGenerator::Library,
      @definition : LibGenerator::Definition,
      @transformers = [] of Crystal::Transformer,
      @requires = [] of String,
      @ast = nil, @source = nil,
    )
    end

    def transform
      @transformers.each do |tr|
        @ast = @ast.not_nil!.transform(tr).as(Crystal::Expressions)
      end
      self
    end

    def generate : String
      ast = Crystal::Expressions.new([
        generate_attributes() || Crystal::Nop.new,
        generate_lib.tap{|l| l.doc = @definition.description },
        generate_requires() || Crystal::Nop.new,
      ])
      source = IO::Memory.new
      ast.to_s(source, emit_doc: true)
      @source = Crystal.format(source.to_s)
    end

    def generate_attributes : Crystal::Attribute | Nil
      if (ldflags = @library.generate_ldflags)
        Crystal::Attribute.new("Link",
          named_args: [ Crystal::NamedArgument.new("ldflags",
            Crystal::StringLiteral.new(ldflags)) ])
      end
    end

    def generate_lib : Crystal::LibDef
      Crystal::LibDef.new(@library.name, @ast).tap do |ln|
        ln.doc = @definition.description
      end
    end

    def generate_requires : Crystal::Expressions | Nil
      if (requires = @requires)
        Crystal::Expressions.new(
          requires.map{|fn| Crystal::Require.new(fn).as(Crystal::ASTNode) }
        )
      end
    end
  end

  getter library : LibGenerator::Library
  getter common_filename : String
  getter libs : Hash(String, Lib)
  getter transformers : Array(Crystal::Transformer)

  def initialize(
    @library : LibGenerator::Library,
    definitions : Hash(String, LibGenerator::Definition),
    @transformers : Array(Crystal::Transformer) = [] of Crystal::Transformer,
  )
    @common_filename = "#{File.basename(@library.destdir)}.cr"

    @libs = {} of String => Lib

    definitions.each do |fn, de|
      @libs[fn] = Lib.new(library: @library, definition: de)
      @libs[fn].transformers.concat(transformers)
    end
  end

  def self.generate(
    library : LibGenerator::Library,
    definitions : Hash(String, LibGenerator::Definition),
    transformers : Array(Crystal::Transformer) = [] of Crystal::Transformer,
  )
    self.new(library, definitions, transformers).generate()
  end

  def generate : Hash(String, String)
    parse_libs()
    group_common_nodes()
    transform_libs()
    generate_libs()

    @libs.map{|fn, li| { fn, li.source } }.to_h
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
      li.generate
    end
  end

  def extract_common_nodes : Array(Crystal::ASTNode)
    # extract common AST nodes using a visitor
    counter = LibGenerator::NodeCounter.new
    @libs.each do |fn, li|
      li.ast.accept(LibGenerator::CountVisitor.new(counter))
    end
    counter.select{|_,c| c > 1 }.map{|n,_| n }
  end

  def group_common_nodes
    libs = @libs

    # if there is some common AST nodes in the libs, add a transformer
    # to remove them: they will be grouped in a common definition/file
    unless (common_nodes = extract_common_nodes()).empty?
      # delete the common AST nodes from every libs
      nrt = LibGenerator::RemoveTransformer.new(common_nodes.dup)
      libs.each{|_, li| li.transformers.unshift(nrt) }
    end


    # if the common_filename file has already been defined, modify it
    if (common_def = libs[@common_filename]?)
      common_def.ast.accept(LibGenerator::DoublonVisitor.new(common_nodes))
      common_nodes.each do |node|
        common_def.ast.as(Crystal::Expressions).expressions << node
      end
    else
      # create a lib containing only common AST nodes
      common_def = libs[@common_filename] = Lib.new(
        library: @library,
        definition: LibGenerator::Definition.new(
          description: "Common definitions of the #{@library.name} lib",
        ),
        ast: Crystal::Expressions.new(common_nodes),
      )
    end

    common_def.transformers.replace(@transformers)
    common_def.requires = \
      libs.keys.map{|fn| File.join(".", fn) if fn != @common_filename }.compact

    self
  end
end
