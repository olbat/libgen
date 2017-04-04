require "yaml"
require "json"

class LibGenerator::Library
  getter name : String
  getter ldflags : String
  getter includes : Array(String)?
  getter definitions : Hash(String, LibGenerator::Definition)?
  getter packages : String?
  getter destdir : String?
  getter rename : LibGenerator::RenameTransformer?

  YAML.mapping({
    name:        {type: String},
    ldflags:     {type: String},
    includes:    {type: Array(String), nilable: true},
    definitions: {type: Hash(String, LibGenerator::Definition), nilable: true},
    packages:    {type: String, nilable: true},
    destdir:     {type: String, nilable: true},
    rename:      {type: LibGenerator::RenameTransformer, nilable: true},
  })

  def initialize(ypp : YAML::PullParser)
    previous_def
    check_attr!
  end

  JSON.mapping({
    name:        {type: String},
    ldflags:     {type: String},
    includes:    {type: Array(String), nilable: true},
    definitions: {type: Hash(String, LibGenerator::Definition), nilable: true},
    packages:    {type: String, nilable: true},
    destdir:     {type: String, nilable: true},
    rename:      {type: LibGenerator::RenameTransformer, nilable: true},
  })

  def initialize(jpp : JSON::PullParser)
    previous_def
    check_attr!
  end

  def initialize(@name : String, @ldflags : String, @includes = nil, @definitions = nil, @packages = nil, @destdir = nil, @rename = nil)
    check_attr!
  end

  protected def check_attr!
    if (@includes.nil? || @includes.try(&.empty?)) && (@definitions.nil? || @definitions.try(&.empty?))
      raise ArgumentError.new(%("includes" or "definitions" must be defined))
    end
  end

  def destdir : String
    @destdir ||= File.join("src", @name.underscore)
  end

  def generate_ldflags : String
    ldflags = @ldflags
    if (packages = @packages)
      "`command -v pkg-config > /dev/null " \
      "&& pkg-config --libs #{packages} " \
      "|| printf %s '#{ldflags}'`"
    else
      ldflags
    end
  end
end
