require "./spec_helper"

describe "LibGenerator::Generator::Lib" do
  describe "initialize" do
    it "creates a new lib" do
      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      li = LibGenerator::Generator::Lib.new(library, LibGenerator::Definition.new)
    end
  end

  describe "transform" do
    it "transforms a lib" do
      sources = ["fun foo", "fun bar"]
      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      transformers = [] of Crystal::Transformer
      transformers << LibGenerator::SortTransformer.new
      li = LibGenerator::Generator::Lib.new(library, LibGenerator::Definition.new, transformers)
      li.ast = Crystal::Expressions.new(ast_nodes(sources))

      li.transform

      li.ast.should eq(Crystal::Expressions.new(ast_nodes(sources.sort)))
    end

    it "transforms a lib to an empty Crystal::Expression" do
      nodes = [ast_node("fun foo")]
      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      li = LibGenerator::Generator::Lib.new(library, LibGenerator::Definition.new)
      li.ast = Crystal::Expressions.new(nodes)

      ast = li.transform(LibGenerator::RemoveTransformer.new(nodes))

      ast.should be_a(Crystal::Expressions)
      ast.expressions.empty?.should be_true
    end
  end

  describe "generate" do
    it "generates a usable Crystal lib" do
      nodes = ast_nodes(["fun foo", "fun bar"])
      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      li = LibGenerator::Generator::Lib.new(library, LibGenerator::Definition.new)

      li.ast = Crystal::Expressions.new(nodes)

      li.transform
      code = li.generate
      code.not_nil!.chomp.should eq(
        <<-EOS
        @[Link(ldflags: "#{library.generate_ldflags}")]
        lib LibFoo
          fun foo
          fun bar
        end
        EOS
      )
    end

    it "raises when trying to generate syntaxically incorrect code" do
      nodes = ast_nodes(["fun foo", "fun bar"])
      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      transformers = [] of Crystal::Transformer
      transformers << LibGenerator::RenameTransformer.new({"FunDef" => [{pattern: /bar/, replacement: "123"}]})
      li = LibGenerator::Generator::Lib.new(library, LibGenerator::Definition.new, transformers)

      li.ast = Crystal::Expressions.new(nodes)

      li.transform

      expect_raises(ArgumentError) do
        li.generate
      end
    end
  end

  describe "generate_link_annotation" do
    it "generates Crystal Link annotation" do
      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      li = LibGenerator::Generator::Lib.new(library, LibGenerator::Definition.new)

      attrs = li.generate_link_annotation
      attrs.should be_a(Crystal::Annotation)
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

    it "generates nil of there is nothing to generate" do
      sources = ["fun foo", "fun bar"]
      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      li = LibGenerator::Generator::Lib.new(library, LibGenerator::Definition.new)
      li.ast = Crystal::Expressions.new([] of Crystal::ASTNode)

      li.generate_lib.should be_nil
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
