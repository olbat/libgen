require "./spec_helper"

describe "LibGenerator::CrystalLibTransformer" do
  describe "transform" do
    it "parses crystal_lib's flags" do
      headers = ["foo.h", "bar.h"]
      prefixes = ["foo_", "bar_"]
      flags = ["-D__FOO", "-D__BAR"]

      ast = Crystal::Parser.parse(
        <<-EOF
        @[Include("#{headers.join(%(", "))}", prefix: ["#{prefixes.join(%(", "))}"], flags: "#{flags.join(" ")}")]
        lib L
        end
        EOF
      )

      transformer = LibGenerator::CrystalLibTransformer.new

      ast.transform(transformer)

      transformer.headers.should eq(headers)
      transformer.flags.should eq(flags)
      transformer.prefixes.should eq(prefixes)
    end
  end
end
