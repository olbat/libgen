require "./spec_helper"

describe "LibGenerator::SortTransformer" do
  describe "transform" do
    it "sorts by node type and name" do
      sources = [
        "fun c",
        "fun a",
        "alias E = Int32",
        "fun b",
      ]
      ast = Crystal::Parser.parse("lib L\n#{sources.join("\n")}\nend")

      transformer = LibGenerator::SortTransformer.new

      ast.transform(transformer)
      ast.to_s.should eq("lib L\n  #{sources.sort.join("\n  ")}\nend")
    end
  end
end
