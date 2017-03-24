require "yaml"
require "json"

class LibGenerator::Library
  getter name : String
  getter ldflags : String
  getter packages : String?
  #getter transformers : Array(Crystal::Transformer)

  YAML.mapping({
    name: { type: String },
    ldflags: { type: String },
    packages: { type: String, nilable: true },
  })

  JSON.mapping({
    name: { type: String },
    ldflags: { type: String },
    packages: { type: String, nilable: true },
  })

  def generate_ldflags : String
    ldflags = @ldflags
    if (packages = @packages)
      "`command -v pkg-config > /dev/null "\
      "&& pkg-config --libs #{packages} "\
      "|| printf %s '#{ldflags}'`"
    else
      ldflags
    end
  end
end
