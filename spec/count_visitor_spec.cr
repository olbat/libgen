require "./spec_helper"

describe "LibGenerator::CountVisitor" do
  describe "visit" do
    it "counts nodes" do
      counter = LibGenerator::NodeCounter.new
      visitor = LibGenerator::CountVisitor.new(counter)
      sources = [
        "fun bar : Void",
        "alias FooT = Int32",
        "enum Bar\nFOO\nBAR\nend",
      ]
      ast = Crystal::Parser.parse("lib L\n#{sources.join("\n")}\nend")

      ast.accept(visitor)
      ast.accept(visitor)

      counter.each do |node, count|
        count.should eq(2)
      end
      counter.size.should eq(3)

      sources.each do |source|
        counter.any? { |n, _| n == ast_node(source) }.should be_true
      end
    end
  end
end
