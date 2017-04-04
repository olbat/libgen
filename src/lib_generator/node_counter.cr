require "compiler/crystal/syntax"

class LibGenerator::NodeCounter
  include Enumerable({Crystal::ASTNode, Int32})

  @counter : Hash(Crystal::ASTNode, Int32)
  delegate each, to: @counter

  def initialize
    @counter = typeof(@counter).new
  end

  def inc(node : Crystal::ASTNode)
    if @counter[node]?
      @counter[node] += 1
    else
      @counter[node] = 1
    end
  end
end
