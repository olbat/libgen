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
