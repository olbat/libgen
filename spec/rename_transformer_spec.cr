require "./spec_helper"

describe "LibGenerator::RenameTransformer" do
  describe "initialize" do
    it "raises if a rule type is invalid" do
      expect_raises do
        LibGenerator::RenameTransformer.new({
          "foo" => [{pattern: /foo/, replacement: "bar"}],
        })
      end

      expect_raises do
        LibGenerator::RenameTransformer.from_yaml(
          <<-EOS
          ---
          rules:
            "foo":
            - pattern: foo
              replacement: bar
          EOS
        )
      end

      expect_raises do
        LibGenerator::RenameTransformer.from_json(
          <<-EOS
          {
            "rules": {
              "foo": {
                "pattern" : "foo",
                "replacement" : "bar"
              }
            }
          }
          EOS
        )
      end
    end

    it "raises if a rules list is empty" do
      expect_raises do
        LibGenerator::RenameTransformer.new({
          "foo" => [] of NamedTuple(pattern: Regex, replacement: String),
        })
      end

      expect_raises do
        LibGenerator::RenameTransformer.from_yaml(
          <<-EOS
          ---
          rules:
            "*": [ ]
          EOS
        )
      end

      expect_raises do
        LibGenerator::RenameTransformer.from_json(
          <<-EOS
          {
            "rules": {
              "*": [ ]
            }
          }
          EOS
        )
      end
    end

    it "loads from YAML" do
      LibGenerator::RenameTransformer.from_yaml(
        <<-EOS
        ---
        rules:
          "*":
          - pattern: _\d+$
            replacement: ""
        EOS
      )
    end

    it "loads from JSON" do
      LibGenerator::RenameTransformer.from_json(
        <<-'EOS'
        {
          "rules": {
            "*": [
              {
                "pattern": "_\\d+$",
                "replacement": ""
              }
            ]
          }
        }
        EOS
      )
    end
  end

  describe "transform" do
    it "renames the specified nodes" do
      ast = Crystal::Parser.parse(
        <<-EOS
        lib L
          fun foo_123(x : Int32)
          fun bar
          alias A_123 = Int32
        end
        EOS
      )

      transformer = LibGenerator::RenameTransformer.new({
        "*"      => [{pattern: /_\d+$/, replacement: ""}],
        "FunDef" => [{pattern: /bar/, replacement: "foobar"}],
      })

      ast.transform(transformer)

      ast.to_s.should eq(
        <<-EOS
        lib L
          fun foo = foo_123(x : Int32)
          fun foobar = bar
          alias A = Int32
        end
        EOS
      )
    end
  end
end
