require "compiler/crystal/syntax"
require "compiler/crystal/tools/formatter"

class LibGenerator::Generator
  class Lib
    getter library : LibGenerator::Library
    getter definition : LibGenerator::Definition
    getter transformers : Array(Crystal::Transformer)
    getter requires : Array(String)
    getter source : String?
    property! ast : Crystal::ASTNode

    def initialize(@library : LibGenerator::Library, @definition : LibGenerator::Definition, @transformers = [] of Crystal::Transformer, @requires = [] of String, @ast = nil, @source = nil)
    end

    def parse
      @ast = @definition.parse_lib(@library.generate_cflags)
      self
    end

    def transform
      @transformers.each do |tr|
        transform(tr)
      end
      self
    end

    def transform(transformer : Crystal::Transformer)
      ast = @ast.not_nil!
      ast = ast.transform(transformer)
      unless ast.is_a?(Crystal::Expressions)
        ast = Crystal::Expressions.new([ast])
      end
      ast.expressions.select! { |n| !n.is_a?(Crystal::Nop) }
      @ast = ast
    end

    def generate : String?
      li = generate_lib()
      requires = generate_requires()

      if li || requires
        expressions = [] of Crystal::ASTNode

        if li
          generate_link_annotation().try { |attrs| expressions << attrs }
          expressions << li
        end
        expressions << requires if requires

        ast = Crystal::Expressions.new(expressions)

        source = IO::Memory.new
        ast.to_s(source, emit_doc: true)
        code = source.to_s

        begin
          Crystal::Parser.parse(code)
        rescue e : Crystal::SyntaxException
          msg = IO::Memory.new
          msg << "transformations are making the code syntaxically incorrect\n\n"
          e.append_to_s(code, msg)
          raise ArgumentError.new(msg.to_s)
        end

        @source = Crystal.format(code)
      end
    end

    def generate_link_annotation : Crystal::Annotation?
      if (ldflags = @library.generate_ldflags)
        Crystal::Annotation.new(Crystal::Path.new(["Link"]),
          named_args: [Crystal::NamedArgument.new("ldflags",
            Crystal::StringLiteral.new(ldflags))])
      end
    end

    def generate_lib : Crystal::LibDef?
      ast = @ast
      unless ast.as(Crystal::Expressions).expressions.empty?
        Crystal::LibDef.new(@library.name, ast).tap do |ln|
          ln.doc = @definition.description
        end
      end
    end

    def generate_requires : Crystal::Expressions?
      requires = @requires
      unless requires.empty?
        Crystal::Expressions.new(
          requires.map { |fn| Crystal::Require.new(fn).as(Crystal::ASTNode) }
        )
      end
    end
  end
end
