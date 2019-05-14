require "crystal_lib"
require "compiler/crystal/syntax"

class LibGenerator::CrystalLibTransformer < CrystalLib::LibTransformer
  getter headers : Array(String)
  getter flags : Array(String)
  getter prefixes : Array(String)

  def initialize
    super
    @headers = [] of String
    @flags = [] of String
    @prefixes = [] of String
  end

  def transform(node : Crystal::LibDef)
    headers, @flags, @prefixes, _ = process_includes
    @headers = headers.scan(/<(.+)>/).flatten.map(&.[1])
    node
  end
end
