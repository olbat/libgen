require "./generator/*"
require "compiler/crystal/syntax"

class LibGenerator::Generator
  getter library : LibGenerator::Library
  getter common_filename : String
  getter libs : Hash(String, Lib)
  getter transformers : Array(Crystal::Transformer)

  def initialize(@library : LibGenerator::Library, definitions : Hash(String, LibGenerator::Definition), @transformers : Array(Crystal::Transformer) = [] of Crystal::Transformer)
    @common_filename = "#{File.basename(@library.destdir)}.cr"

    @libs = {} of String => Lib

    definitions.each do |fn, de|
      @libs[fn] = Lib.new(library: @library, definition: de)
      @libs[fn].transformers.concat(transformers)
    end
  end

  def self.generate(library : LibGenerator::Library, definitions : Hash(String, LibGenerator::Definition), transformers : Array(Crystal::Transformer) = [] of Crystal::Transformer)
    self.new(library, definitions, transformers).generate
  end

  def generate : Hash(String, String?)
    parse_libs()
    group_common_nodes()
    transform_libs()
    generate_libs()

    @libs.map { |fn, li| {fn, li.source} }.to_h
  end

  def parse_libs
    @libs.each do |fn, de|
      de.ast = de.definition.parse_lib
    end
    self
  end

  def transform_libs
    @libs.each do |filename, li|
      li.transform
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
    counter.select { |_, c| c > 1 }.map { |n, _| n }
  end

  def group_common_nodes
    libs = @libs

    # if there is some common AST nodes in the libs, add a transformer
    # to remove them: they will be grouped in a common definition/file
    unless (common_nodes = extract_common_nodes()).empty?
      # delete the common AST nodes from every libs
      nrt = LibGenerator::RemoveTransformer.new(common_nodes.dup)
      libs.each { |_, li| li.transformers.unshift(nrt) }
    end

    # if the common_filename file has already been defined, modify it
    if (common_def = libs[@common_filename]?)
      common_def.ast.accept(LibGenerator::DuplicatesVisitor.new(common_nodes))
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

    requires = libs.select { |_, v| !v.ast.as(Crystal::Expressions).expressions.empty? }.keys
    common_def.requires.concat(requires.map { |fn| File.join(".", fn) if fn != @common_filename }.compact)

    self
  end
end
