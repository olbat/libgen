require "./spec_helper"

describe "LibGenerator::RenameTransformer" do
  describe "initialize" do
    it "raises if a rule type is invalid" do
      expect_raises(ArgumentError) do
        LibGenerator::RenameTransformer.new({
          "foo" => [{pattern: /foo/, replacement: "bar"}],
        })
      end

      expect_raises(ArgumentError) do
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

      expect_raises(JSON::ParseException) do
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
      expect_raises(ArgumentError) do
        LibGenerator::RenameTransformer.new({
          "foo" => [] of NamedTuple(pattern: Regex, replacement: String),
        })
      end

      expect_raises(ArgumentError) do
        LibGenerator::RenameTransformer.from_yaml(
          <<-EOS
          ---
          rules:
            "*": [ ]
          EOS
        )
      end

      expect_raises(ArgumentError) do
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
          fun bar_123
          fun foobar
          alias A_123 = Int32
          enum Foo
            FOO_123 = 1
            BAR_123
          end
        end
        EOS
      )

      transformer = LibGenerator::RenameTransformer.new({
        "*"      => [{pattern: /_\d+$/, replacement: ""}],
        "FunDef" => [{pattern: /foobar/, replacement: "barfoo"}],
      })

      ast.transform(transformer)

      ast.to_s.should eq(
        <<-EOS
        lib L
          fun foo = foo_123(x : Int32)
          fun bar = bar_123
          fun barfoo = foobar
          alias A = Int32
          enum Foo
            FOO = 1
            BAR
          end
        end
        EOS
      )
    end
  end
end
