require "./spec_helper"

describe "LibGenerator::CountVisitor" do
  describe "visit" do
    it "removes duplicated nodes from the list" do
      sources = [
        "fun foo",
        "fun bar",
        "fun foobar",
        "fun barfoo",
      ]
      ast = Crystal::Parser.parse("lib L\n#{sources[0..1].join("\n")}\nend")

      nodes = ast_nodes(sources)
      visitor = LibGenerator::DuplicatesVisitor.new(nodes)
      ast.accept(visitor)

      nodes.size.should eq(2)
      sources[2..-1].each do |source|
        nodes.any?(&.== ast_node(source)).should be_true
      end
    end
  end
end
