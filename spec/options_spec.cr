require "./spec_helper"

describe "LibGenerator::Options" do
  describe "initialize" do
    it "creates a new options" do
      LibGenerator::Options.new
    end

    it "loads from YAML" do
      options = LibGenerator::Options.from_yaml("")
      options.import_docstrings
        .should eq LibGenerator::Options::ImportDocStrings::None

      options = LibGenerator::Options.from_yaml(
        <<-EOS
        ---
        import_docstrings: brief
        EOS
      )
      options.import_docstrings
        .should eq LibGenerator::Options::ImportDocStrings::Brief
    end

    it "loads from JSON" do
      options = LibGenerator::Options.from_json("{}")
      options.import_docstrings
        .should eq LibGenerator::Options::ImportDocStrings::None

      options = LibGenerator::Options.from_json(
        <<-EOS
        {
          "import_docstrings" : "full"
        }
        EOS
      )
      options.import_docstrings
        .should eq LibGenerator::Options::ImportDocStrings::Full
    end
  end

  describe "LibGenerator::Options::ImportDocStrings" do
    describe "to_crystallib_parser_option" do
      it "returns the proper CrystalLib::Parser::Option value" do
        LibGenerator::Options::ImportDocStrings::None.to_crystallib_parser_option
          .should eq CrystalLib::Parser::Option::None
        LibGenerator::Options::ImportDocStrings::Brief.to_crystallib_parser_option
          .should eq CrystalLib::Parser::Option::ImportBriefComments
        LibGenerator::Options::ImportDocStrings::Full.to_crystallib_parser_option
          .should eq CrystalLib::Parser::Option::ImportFullComments
      end
    end
  end
end
