require "./spec_helper"

describe "LibGenerator::Generator::Lib" do
  describe "initialize" do
    it "creates a new lib" do
      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      li = LibGenerator::Generator::Lib.new(library, LibGenerator::Definition.new)
    end
  end

  describe "generate_attributes" do
    it "generates Crystal attributes" do
      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      li = LibGenerator::Generator::Lib.new(library, LibGenerator::Definition.new)

      attrs = li.generate_attributes
      attrs.should be_a(Crystal::Attribute)
      attrs.to_s.should eq(%(@[Link(ldflags: "#{library.generate_ldflags}")]))
    end
  end

  describe "generate_lib" do
    it "generates a Crystal lib" do
      sources = ["fun foo", "fun bar"]
      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      li = LibGenerator::Generator::Lib.new(library, LibGenerator::Definition.new)
      li.ast = Crystal::Expressions.new(ast_nodes(sources))

      l = li.generate_lib
      l.should be_a(Crystal::LibDef)
      l.to_s.should eq("lib LibFoo\n  #{sources.join("\n  ")}\nend")
    end
  end

  describe "generate_requires" do
    it "generates require expressions" do
      requires = ["a", "b", "c"]
      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      li = LibGenerator::Generator::Lib.new(library, LibGenerator::Definition.new, requires: requires)

      req = li.generate_requires
      req.should be_a(Crystal::Expressions)
      req.to_s.strip.should eq(%(require "#{requires.join(%("\nrequire "))}"))
    end
  end
end

describe "LibGenerator::Generator" do
  describe "initialize" do
    it "creates a new generator" do
      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      definitions = {"foo" => LibGenerator::Definition.new}
      transformers = [LibGenerator::SortTransformer.new.as(Crystal::Transformer)]
      generator = LibGenerator::Generator.new(library, definitions, transformers)
      generator.libs.keys.should eq(["foo"])
    end
  end

  # TODO: to be simplified + create a helper
  describe "extract_common_nodes" do
    it "extracts common nodes" do
      sources = [
        "fun foo\nfun bar",
        "fun foo\nfun foobar",
        "fun bar",
        "fun barfoo",
      ]

      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      definitions = sources.size.times.map(&.to_s).to_a.zip(sources.map { LibGenerator::Definition.new }).to_h
      generator = LibGenerator::Generator.new(library, definitions, [] of Crystal::Transformer)

      generator.libs.each_with_index do |(_, li), i|
        li.ast = Crystal::Parser.parse("lib L\n#{sources[i]}\nend")
      end

      generator.extract_common_nodes.should eq(ast_nodes(["fun foo", "fun bar"]))
    end
  end

  describe "group_common_nodes" do
    it "groups common nodes in a lib and generates requires" do
      sources = [
        "fun foo\nfun bar",
        "fun foo\nfun foobar",
        "fun bar",
        "fun barfoo",
      ]

      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      definitions = sources.size.times.map(&.to_s).to_a.zip(sources.map { LibGenerator::Definition.new }).to_h
      generator = LibGenerator::Generator.new(library, definitions, [] of Crystal::Transformer)

      generator.libs.each_with_index do |(_, li), i|
        li.ast = Crystal::Parser.parse("lib L\n#{sources[i]}\nend")
      end

      generator.group_common_nodes

      li = generator.libs[generator.common_filename]

      li.ast.should eq(Crystal::Expressions.new(ast_nodes(["fun foo", "fun bar"])))
      li.requires.should eq(definitions.keys.map { |fn| "./#{fn}" })
    end

    it "groups common nodes in an existing lib and generates requires" do
      sources = [
        "fun foo\nfun bar",
        "fun foo\nfun foobar",
        "fun bar",
        "fun barfoo",
      ]

      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      definitions = sources.size.times.map(&.to_s).to_a.zip(sources.map { LibGenerator::Definition.new }).to_h
      common_filename = "lib_foo.cr"
      definitions[common_filename] = LibGenerator::Definition.new

      generator = LibGenerator::Generator.new(library, definitions, [] of Crystal::Transformer)

      generator.libs.each_with_index do |(_, li), i|
        li.ast = Crystal::Parser.parse("lib L\n#{sources[i]}\nend") if i < sources.size
      end

      generator.libs[common_filename].ast = Crystal::Expressions.new([ast_node("fun common")])

      generator.group_common_nodes

      li = generator.libs[generator.common_filename]

      li.ast.should eq(Crystal::Expressions.new(ast_nodes(["fun common", "fun foo", "fun bar"])))
      li.requires.should eq(sources.size.times.to_a.map { |i| "./#{i}" })
    end
  end
end
