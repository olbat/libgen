require "./spec_helper"

describe "LibGenerator::SortTransformer" do
  describe "transform" do
    it "sorts lib's nodes by type and name" do
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

    it "doesn't sort struct's and union's fields" do
      sources = <<-EOS
        lib L
          struct Foo
            a : Int32
            c : Int8
            b : Int16
          end
          union Bar
            x : Int32
            z : Int8
            y : Int16
          end
        end
        EOS
      ast = Crystal::Parser.parse(sources)

      transformer = LibGenerator::SortTransformer.new

      ast.transform(transformer)
      ast.to_s.should eq(sources)
    end
  end
end
