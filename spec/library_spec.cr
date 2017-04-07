require "./spec_helper"

describe "LibGenerator::Library" do
  describe "initialize" do
    it "doesnt raise an exception if @includes or @definitions is defined" do
      LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      LibGenerator::Library.new("LibFoo", "-lfoo",
        definitions: {"bar" => LibGenerator::Definition.new})
    end

    it "raises an exception if nor @includes or @definitions is defined" do
      expect_raises do
        LibGenerator::Library.new("LibFoo", "-lfoo")
      end
      expect_raises do
        LibGenerator::Library.new("LibFoo", "-lfoo", includes: [] of String)
      end
      expect_raises do
        LibGenerator::Library.new("LibFoo", "-lfoo",
          definitions: {} of String => LibGenerator::Definition)
      end
      expect_raises do
        LibGenerator::Library.from_yaml(
          <<-EOS
          ---
          name: LibFoo
          ldflags: "-foo"
          EOS
        )
      end
      expect_raises do
        LibGenerator::Library.from_yaml(
          <<-EOS
          ---
          name: LibFoo
          ldflags: "-foo"
          includes: [ ]
          EOS
        )
      end
      expect_raises do
        LibGenerator::Library.from_json(
          <<-EOS
          {
            "name" : "LibFoo",
            "ldflags" : "-foo",
          }
          EOS
        )
      end
      expect_raises do
        LibGenerator::Library.from_json(
          <<-EOS
          {
            "name" : "LibFoo",
            "ldflags" : "-foo",
            "includes" : [ ]
          }
          EOS
        )
      end
    end

    it "loads from YAML with includes" do
      LibGenerator::Library.from_yaml(
        <<-EOS
        ---
        name: LibFoo
        ldflags: "-foo"
        includes: [ bar.yml ]
        EOS
      )
    end

    it "loads from YAML with definitions" do
      LibGenerator::Library.from_yaml(
        <<-EOS
        ---
        name: LibFoo
        ldflags: "-foo"
        definitions:
          bar:
            includes: [ bar.h ]
            prefixes: [ bar_ ]
        EOS
      )
    end

    it "loads from YAML with renames" do
      LibGenerator::Library.from_yaml(
        <<-EOS
        ---
        name: LibFoo
        ldflags: "-foo"
        includes: [ bar.yml ]
        rename:
          rules:
            "*":
            - pattern: _\d+$
              replacement: ""
        EOS
      )
    end

    it "loads from JSON with includes" do
      LibGenerator::Library.from_json(
        <<-EOS
        {
          "name" : "LibFoo",
          "ldflags" : "-foo",
          "includes" : [ "bar.yml" ]
        }
        EOS
      )
    end

    it "loads from JSON with definitions" do
      LibGenerator::Library.from_json(
        <<-EOS
        {
          "name" : "LibFoo",
          "ldflags" : "-foo",
          "definitions" : {
            "bar" : {
              "includes" : [ "bar.h" ],
              "prefixes" : [ "bar_" ]
            }
          }
        }
        EOS
      )
    end

    it "loads from JSON with renames" do
      LibGenerator::Library.from_json(
        <<-'EOS'
        {
          "name" : "LibFoo",
          "ldflags" : "-foo",
          "includes" : [ "bar.yml" ],
          "rename": {
            "rules": {
              "*": [
                {
                  "pattern": "_\\d+$",
                  "replacement": ""
                }
              ]
            }
          }
        }
        EOS
      )
    end
  end

  describe "destdir" do
    it "returns the default destdir" do
      library = LibGenerator::Library.new("LibFoo", "-lfoo", ["bar.yml"])
      library.destdir.should eq("src/lib_foo")

      library = LibGenerator::Library.new("LibFOO", "-lfoo", ["bar.yml"])
      library.destdir.should eq("src/lib_foo")
    end

    it "returns the specified destdir" do
      library = LibGenerator::Library.new("LibFoo", "-lfoo", ["bar.yml"],
        destdir: "/dir")
      library.destdir.should eq("/dir")
    end
  end

  describe "generate_ldflags" do
    it "it returns @ldflags when no packages are specified" do
      ldflags = "-lfoo -lbar"
      library = LibGenerator::Library.new("LibFoo", ldflags, ["bar.yml"])
      library.generate_ldflags.should eq(ldflags)
    end

    it "it returns a command using pkg-config when packages are specified" do
      ldflags = "-lfoo -lbar"
      packages = "foo bar"
      library = LibGenerator::Library.new("LibFoo", ldflags, ["bar.yml"],
        packages: packages)
      library.generate_ldflags.should match(/pkg-config\s+--libs\s+#{packages}/)
      library.generate_ldflags.should match(/#{ldflags}/)
    end
  end
end
