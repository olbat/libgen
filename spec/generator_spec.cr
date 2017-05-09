require "./spec_helper"

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
        li.ast = ast_exprs(sources[i])
      end

      generator.extract_common_nodes.should eq(ast_nodes(["fun foo", "fun bar"]))
    end
  end

  describe "group_common_nodes" do
    it "groups common nodes in a lib and generates requires for non-empty libs" do
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
        li.ast = ast_exprs(sources[i])
      end

      generator.group_common_nodes

      li = generator.libs[generator.common_filename]

      li.ast.should eq(Crystal::Expressions.new(ast_nodes(["fun foo", "fun bar"])))
      li.requires.should eq([1, 3].map { |fn| "./#{fn}" })
    end

    it "groups common nodes in an existing lib and generates requires for non-empty libs" do
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
        li.ast = ast_exprs(sources[i]) if i < sources.size
      end

      generator.libs[common_filename].ast = Crystal::Expressions.new([ast_node("fun common")])

      generator.group_common_nodes

      li = generator.libs[generator.common_filename]

      li.ast.should eq(Crystal::Expressions.new(ast_nodes(["fun common", "fun foo", "fun bar"])))
      li.requires.should eq([1, 3].map { |i| "./#{i}" })
    end
  end

  describe "generate" do
    it "generates libs and common lib" do
      sources = [
        "fun foo\nfun bar",
        "fun foo\nfun foobar",
        "fun bar",
        "fun barfoo",
      ]

      library = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      definitions = sources.size.times.map(&.to_s).to_a.zip(sources.map { LibGenerator::Definition.new }).to_h

      transformers = [
        LibGenerator::SortTransformer.new,
        LibGenerator::RenameTransformer.new({
          "*" => [{pattern: /foo/, replacement: "foofoo"}],
        }),
      ]
      generator = LibGenerator::Generator.new(library, definitions, transformers)

      generator.libs.each_with_index do |(_, li), i|
        li.ast = ast_exprs(sources[i]) if i < sources.size
      end

      libs = generator.generate

      libs["0"].should be_nil
      libs["1"].should match(/^@\[Link\([^\n]+"-lfoo"/m)
      libs["1"].should match(/^\s*fun foofoobar\s*=\s*foobar$/m)
      libs["2"].should be_nil
      libs["3"].should match(/^@\[Link\([^\n]+"-lfoo"/m)
      libs["1"].should match(/^\s*fun foofoobar\s*=\s*foobar$/m)
      libs["3"].should match(/^\s*fun barfoofoo = barfoo$/m)
      libs["lib_foo.cr"].should match(/^@\[Link\([^\n]+"-lfoo"/m)
      libs["lib_foo.cr"].should match(/^\s*fun bar$/m)
      libs["lib_foo.cr"].should match(/^\s*fun foofoo\s*=\s*foo$/m)
      libs["lib_foo.cr"].should_not match(/^\s*require\s*"\.\/0"$/m)
      libs["lib_foo.cr"].should match(/^\s*require\s*"\.\/1"$/m)
      libs["lib_foo.cr"].should_not match(/^\s*require\s*"\.\/2"$/m)
      libs["lib_foo.cr"].should match(/^\s*require\s*"\.\/3"$/m)
    end
  end
end

# FIXME: ugly hack to "disable" the #parse_libs method (used when testing #generate)
class LibGenerator::Generator
  def parse_libs
  end
end
