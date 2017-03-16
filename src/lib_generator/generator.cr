require "../crystal_lib/src/clang"
require "../crystal_lib/src/crystal_lib"
require "compiler/crystal/syntax"
require "compiler/crystal/tools/formatter"

class LibGenerator::Generator
  def self.generate(definitions : Array(LibGenerator::Definition))
    counter = LibGenerator::NodeCounter.new
    definitions.each do |de|
      nodes = CrystalLib::Parser.parse(de.c_includes)
      prefix_matcher = CrystalLib::PrefixMatcher.new(de.prefixes, false)
      de.ast = CrystalLib::PrefixImporter.import(nodes, prefix_matcher)\
        .as(Crystal::Expressions)
      de.ast.accept(LibGenerator::NodeCountVisitor.new(counter))
    end

    common_nodes = counter.select{|_,c| c > 1 }.map{|n,_| n }

    transformers = [] of Crystal::Transformer
    transformers << LibGenerator::NodeRemoverTransformer.new(common_nodes) \
      unless common_nodes.empty?
    transformers << LibGenerator::FunRenamerTransformer.new(/_\d+$/, "")
    transformers << LibGenerator::ExpressionsSorterTransformer.new

    definitions.each do |de|
      transformers.each do |tr|
        de.ast = de.ast.transform(tr).as(Crystal::Expressions)
      end
      print(de)
    end

    unless common_nodes.empty?
      common_nodes = Crystal::Expressions.new(common_nodes)
      transformers.delete_at(0)
      transformers.each do |tr|
        common_nodes = common_nodes.transform(tr).as(Crystal::Expressions)
      end
      libnode = Crystal::LibDef.new("LibICU", common_nodes)
      libnode.doc = "Common definitions of the LibICU lib"
      source = IO::Memory.new
      libnode.to_s(source, emit_doc: true)
      puts Crystal.format(source.to_s)
    end
  end

  def self.print(definition : LibGenerator::Definition, io : IO = STDOUT)
    libnode = Crystal::LibDef.new(definition.lib_name, definition.ast)
    libnode.doc = definition.description
    source = IO::Memory.new
    libnode.to_s(source, emit_doc: true)
    io.puts(Crystal.format(source.to_s))
  end
end
