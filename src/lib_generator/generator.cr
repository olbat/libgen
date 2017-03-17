# FIXME: use the shard
require "../crystal_lib/src/clang"
require "../crystal_lib/src/crystal_lib"

require "compiler/crystal/syntax"
require "compiler/crystal/tools/formatter"

# TODO: singleton? + split generate in several methods ?
#       (get_common_nodes, transform, ...)
class LibGenerator::Generator
  COMMON_FILENAME = "common.cr"

  def self.generate(
    lib_name : String,
    definitions : Hash(String, LibGenerator::Definition),
    transformers : Array(Crystal::Transformer) = [] of Crystal::Transformer,
  )
    ret = {} of String => String

    counter = LibGenerator::NodeCounter.new

    definitions.each do |_, d|
      # parse and transform the C headers to Crystal AST using CrystalLib
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
    unless common_nodes.empty?
      # TODO: use a more specific error class ?
      raise ArgumentError.new("The #{COMMON_FILENAME} filename is reserved "\
        "for the lib") if definitions.has_key?(COMMON_FILENAME)
      transformers.unshift(
        LibGenerator::NodeRemoverTransformer.new(common_nodes)
      )
    end

    # transform (sanitize, ...) each definition and generate the Crystal code
    definitions.each do |filename, d|
      transformers.each do |tr|
        d.ast = d.ast.transform(tr).as(Crystal::Expressions)
      end
      ret[filename] = generate(lib_name, d)
    end

    # TODO: handle common_nodes definition with the other ones
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
      ret[COMMON_FILENAME] = generate(lib_name, common_def)
    end

    ret
  end

  def self.generate(
    lib_name : String,
    definition : LibGenerator::Definition,
  )
    # generate a Crystal lib with it's attributes
    # TODO: generate the lib's attributes
    libnode = Crystal::LibDef.new(lib_name, definition.ast)
    libnode.doc = definition.description
    source = IO::Memory.new

    libnode.to_s(source, emit_doc: true)
    Crystal.format(source.to_s)
  end
end
