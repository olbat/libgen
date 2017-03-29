require "yaml"
require "json"

class LibGenerator::Library
  getter name : String
  getter ldflags : String
  getter includes : Array(String)
  getter packages : String?
  getter rewrite : LibGenerator::RewriterTransformer?

  YAML.mapping({
    name: { type: String },
    ldflags: { type: String },
    includes: { type: Array(String) },
    packages: { type: String, nilable: true },
    destdir: { type: String, nilable: true },
    rewrite: { type: LibGenerator::RewriterTransformer, nilable: true },
  })

  JSON.mapping({
    name: { type: String },
    ldflags: { type: String },
    includes: { type: Array(String) },
    packages: { type: String, nilable: true },
    destdir: { type: String, nilable: true },
    rewrite: { type: LibGenerator::RewriterTransformer, nilable: true },
  })

  def destdir : String
    @destdir ||= File.join("src", "#{@name.downcase}.cr")
  end

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
