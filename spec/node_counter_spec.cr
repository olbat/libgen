require "./spec_helper"

describe "LibGenerator::NodeCounter" do
  describe "inc" do
    it "counts identical nodes" do
      source = "fun foo"
      node = ast_node(source)

      counter = LibGenerator::NodeCounter.new

      counter.inc(node)
      counter.to_h[node].should eq(1)

      counter.inc(ast_node(source))
      counter.to_h[node].should eq(2)
    end
  end
end
