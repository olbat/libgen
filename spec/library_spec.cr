require "./spec_helper"
require "crystal_lib"

describe "LibGenerator::Library" do
  describe "initialize" do
    it "doesnt raise an exception if @includes or @definitions is defined" do
      LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      LibGenerator::Library.new("LibFoo", "-lfoo",
        definitions: {"bar" => LibGenerator::Definition.new})
    end

    it "raises an exception if nor @includes or @definitions is defined" do
      expect_raises(ArgumentError) do
        LibGenerator::Library.new("LibFoo", "-lfoo")
      end
      expect_raises(ArgumentError) do
        LibGenerator::Library.new("LibFoo", "-lfoo", includes: [] of String)
      end
      expect_raises(ArgumentError) do
        LibGenerator::Library.new("LibFoo", "-lfoo",
          definitions: {} of String => LibGenerator::Definition)
      end
      expect_raises(ArgumentError) do
        LibGenerator::Library.from_yaml(
          <<-EOS
          ---
          name: LibFoo
          ldflags: "-foo"
          EOS
        )
      end
      expect_raises(ArgumentError) do
        LibGenerator::Library.from_yaml(
          <<-EOS
          ---
          name: LibFoo
          ldflags: "-foo"
          includes: [ ]
          EOS
        )
      end
      expect_raises(ArgumentError) do
        LibGenerator::Library.from_json(
          <<-EOS
          {
            "name" : "LibFoo",
            "ldflags" : "-foo"
          }
          EOS
        )
      end
      expect_raises(ArgumentError) do
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
        cflags: "-D_FOO"
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
          "cflags" : "-D_FOO",
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

  describe "lib_name" do
    it "returns the lib name when no namespace is included in library name" do
      library = LibGenerator::Library.new("LibFoo", "-lfoo", ["bar.yml"])
      library.lib_name.should eq "LibFoo"
    end

    it "returns the lib name when a namespace is included in library name" do
      library = LibGenerator::Library.new("Foo::Lib", "-lfoo", ["bar.yml"])
      library.lib_name.should eq "Lib"

      library = LibGenerator::Library.new("Foo::Bar::Lib", "-lfoo", ["bar.yml"])
      library.lib_name.should eq "Lib"
    end
  end

  describe "module_names" do
    it "returns no module names when no namespace is included in library name" do
      library = LibGenerator::Library.new("LibFoo", "-lfoo", ["bar.yml"])
      library.module_names.empty?.should be_true
    end

    it "returns the module names when a namespace is included in library name" do
      library = LibGenerator::Library.new("Foo::Lib", "-lfoo", ["bar.yml"])
      library.module_names.should eq ["Foo"]

      library = LibGenerator::Library.new("Foo::Bar::Lib", "-lfoo", ["bar.yml"])
      library.module_names.should eq ["Foo", "Bar"]
    end
  end

  describe "generate_cflags" do
    it "returns @cflags when no packages are specified" do
      cflags = "-D__FOO -I/usr/include/foo"
      library = LibGenerator::Library.new("LibFoo", "-lfoo", ["bar.yml"],
        cflags: cflags)
      library.generate_cflags.should eq(cflags)
    end

    it "looks for cflags using pkg-config when packages are specified" do
      packages = "openssl"
      library = LibGenerator::Library.new("LibFoo", "-lfoo", ["bar.yml"],
        packages: packages)
      library.generate_cflags.should be_nil
    end

    it "looks for cflags using pkg-config when invalid packages are specified" do
      packages = "_invalid_"
      library = LibGenerator::Library.new("LibFoo", "-lfoo", ["bar.yml"],
        packages: packages)
      library.generate_cflags.should be_nil
    end

    it "looks for cflags using pkg-config when packages are specified and concat flags to @cflags" do
      cflags = "-D__FOO -I/usr/include/foo"
      pcflags = ""
      packages = "openssl"
      library = LibGenerator::Library.new("LibFoo", "-lfoo", ["bar.yml"],
        cflags: cflags, packages: packages)
      library.generate_cflags.should eq("#{pcflags} #{cflags}".strip)
    end
  end

  describe "generate_ldflags" do
    it "returns @ldflags when no packages are specified" do
      ldflags = "-lfoo -lbar"
      library = LibGenerator::Library.new("LibFoo", ldflags, ["bar.yml"])
      library.generate_ldflags.should eq(ldflags)
    end

    it "returns a command using pkg-config when packages are specified" do
      ldflags = "-lfoo -lbar"
      packages = "foo bar"
      library = LibGenerator::Library.new("LibFoo", ldflags, ["bar.yml"],
        packages: packages)
      library.generate_ldflags.should match(/pkg-config\s+--libs\s+#{packages}/)
      library.generate_ldflags.should match(/#{ldflags}/)
    end
  end

  describe "generate_crystallib_parser_options" do
    it "sets the proper crystal_lib parser option when option ImportDocStrings is not used" do
      li = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"])
      li.generate_crystallib_parser_options.import_brief_comments?.should be_false
      li.generate_crystallib_parser_options.import_full_comments?.should be_false
    end

    it "sets the proper crystal_lib parser option when option ImportDocStrings is used" do
      opts = LibGenerator::Options.new(import_docstrings: LibGenerator::Options::ImportDocStrings::Brief)
      li = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"],
        options: opts)
      li.generate_crystallib_parser_options.import_brief_comments?.should be_true
      li.generate_crystallib_parser_options.import_full_comments?.should be_false

      opts = LibGenerator::Options.new(import_docstrings: LibGenerator::Options::ImportDocStrings::Full)
      li = LibGenerator::Library.new("LibFoo", "-lfoo", includes: ["bar.yml"],
        options: opts)
      li.generate_crystallib_parser_options.import_brief_comments?.should be_false
      li.generate_crystallib_parser_options.import_full_comments?.should be_true
    end
  end
end
