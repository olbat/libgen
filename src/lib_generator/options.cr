require "crystal_lib"
require "yaml"
require "json"

class LibGenerator::Options
  enum ImportDocStrings
    Brief = CrystalLib::Parser::Option::ImportBriefComments
    Full  = CrystalLib::Parser::Option::ImportFullComments
    None  = CrystalLib::Parser::Option::None

    def to_crystallib_parser_option : CrystalLib::Parser::Option
      CrystalLib::Parser::Option.new(self.value)
    end
  end

  getter import_docstrings : ImportDocStrings

  {% for klass in ["YAML", "JSON"] %}
  {{klass.id}}.mapping({
    import_docstrings: {type: ImportDocStrings, default: ImportDocStrings::None},
  })
  {% end %}

  def initialize(@import_docstrings : ImportDocStrings = ImportDocStrings::None)
  end
end
