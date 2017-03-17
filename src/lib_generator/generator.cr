require "../crystal_lib/src/clang"
require "../crystal_lib/src/crystal_lib"
require "compiler/crystal/syntax"
require "compiler/crystal/tools/formatter"

class LibGenerator::Generator
  def self.generate(
    lib_name : String,
    definitions : Array(LibGenerator::Definition),
    transformers : Array(Crystal::Transformer) = [] of Crystal::Transformer,
    output : IO = STDOUT,
  )
    counter = LibGenerator::NodeCounter.new

    definitions.each do |d|
      # parse and transform the C headers using CrystalLib
      nodes = CrystalLib::Parser.parse(d.c_includes.not_nil!)
      prefix_matcher = CrystalLib::PrefixMatcher.new(d.prefixes.not_nil!, false)
      d.ast = CrystalLib::PrefixImporter.import(nodes, prefix_matcher)\
        .as(Crystal::Expressions)

      # count the number of time each AST node appears in the different defs
      d.ast.accept(LibGenerator::NodeCountVisitor.new(counter))
    end

    # extract the AST nodes that several definitions have in common
    common_nodes = counter.select{|_,c| c > 1 }.map{|n,_| n }

    # if there is some common nodes, add a transformer to remove them: they will
    # be grouped in a common definition/file
    transformers.unshift(
      LibGenerator::NodeRemoverTransformer.new(common_nodes)
    ) unless common_nodes.empty?

    # transform (sanitize, ...) each definition and generate the Crystal code
    definitions.each do |d|
      transformers.each do |tr|
        d.ast = d.ast.transform(tr).as(Crystal::Expressions)
      end
      generate(lib_name, d, output)
    end

    unless common_nodes.empty?
      # generate the Crystal code including common definitions
      common_def = LibGenerator::Definition.new(
        description: "Common definitions of the #{lib_name} lib",
        ast: Crystal::Expressions.new(common_nodes),
      )
      transformers.delete_at(0) # remove the NodeRemoverTransformer
      transformers.each do |tr|
        common_def.ast = common_def.ast.transform(tr).as(Crystal::Expressions)
      end
      generate(lib_name, common_def, output)
    end
  end

  def self.generate(
    lib_name : String,
    definition : LibGenerator::Definition,
    io : IO = STDOUT
  )
    # generate a Crystal lib with it's attributes
    # TODO: generate the lib's attributes
    libnode = Crystal::LibDef.new(lib_name, definition.ast)
    libnode.doc = definition.description
    source = IO::Memory.new
    libnode.to_s(source, emit_doc: true)
    io.puts(Crystal.format(source.to_s))
  end
end
