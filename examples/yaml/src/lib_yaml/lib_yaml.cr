@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs yaml-0.1 2> /dev/null|| printf %s '-lyaml'`")]
lib LibYAML
  alias X_IoLockT = Void
  alias X__Off64T = LibC::Long
  alias X__OffT = LibC::Long
  alias YamlCharT = UInt8
  alias YamlNodeItemT = LibC::Int
  # Line break types.
  enum YamlBreakE
    # Let the parser choose the break type.
    YamlAnyBreak = 0
    # Use CR for line breaks (Mac style).
    YamlCrBreak = 1
    # Use LN for line breaks (Unix style).
    YamlLnBreak = 2
    # Use CR LN for line breaks (DOS style).
    YamlCrlnBreak = 3
  end
  # The emitter states.
  enum YamlEmitterStateE
    # Expect STREAM-START.
    YamlEmitStreamStartState = 0
    # Expect the first DOCUMENT-START or STREAM-END.
    YamlEmitFirstDocumentStartState = 1
    # Expect DOCUMENT-START or STREAM-END.
    YamlEmitDocumentStartState = 2
    # Expect the content of a document.
    YamlEmitDocumentContentState = 3
    # Expect DOCUMENT-END.
    YamlEmitDocumentEndState = 4
    # Expect the first item of a flow sequence.
    YamlEmitFlowSequenceFirstItemState = 5
    # Expect an item of a flow sequence.
    YamlEmitFlowSequenceItemState = 6
    # Expect the first key of a flow mapping.
    YamlEmitFlowMappingFirstKeyState = 7
    # Expect a key of a flow mapping.
    YamlEmitFlowMappingKeyState = 8
    # Expect a value for a simple key of a flow mapping.
    YamlEmitFlowMappingSimpleValueState = 9
    # Expect a value of a flow mapping.
    YamlEmitFlowMappingValueState = 10
    # Expect the first item of a block sequence.
    YamlEmitBlockSequenceFirstItemState = 11
    # Expect an item of a block sequence.
    YamlEmitBlockSequenceItemState = 12
    # Expect the first key of a block mapping.
    YamlEmitBlockMappingFirstKeyState = 13
    # Expect the key of a block mapping.
    YamlEmitBlockMappingKeyState = 14
    # Expect a value for a simple key of a block mapping.
    YamlEmitBlockMappingSimpleValueState = 15
    # Expect a value of a block mapping.
    YamlEmitBlockMappingValueState = 16
    # Expect nothing.
    YamlEmitEndState = 17
  end
  # The stream encoding.
  enum YamlEncodingE
    # Let the parser choose the encoding.
    YamlAnyEncoding = 0
    # The default UTF-8 encoding.
    YamlUtf8Encoding = 1
    # The UTF-16-LE encoding with BOM.
    YamlUtf16LeEncoding = 2
    # The UTF-16-BE encoding with BOM.
    YamlUtf16BeEncoding = 3
  end
  # Many bad things could happen with the parser and emitter.
  enum YamlErrorTypeE
    # No error is produced.
    YamlNoError = 0
    # Cannot allocate or reallocate a block of memory.
    YamlMemoryError = 1
    # Cannot read or decode the input stream.
    YamlReaderError = 2
    # Cannot scan the input stream.
    YamlScannerError = 3
    # Cannot parse the input stream.
    YamlParserError = 4
    # Cannot compose a YAML document.
    YamlComposerError = 5
    # Cannot write to the output stream.
    YamlWriterError = 6
    # Cannot emit a YAML stream.
    YamlEmitterError = 7
  end
  # Event types.
  enum YamlEventTypeE
    # An empty event.
    YamlNoEvent = 0
    # A STREAM-START event.
    YamlStreamStartEvent = 1
    # A STREAM-END event.
    YamlStreamEndEvent = 2
    # A DOCUMENT-START event.
    YamlDocumentStartEvent = 3
    # A DOCUMENT-END event.
    YamlDocumentEndEvent = 4
    # An ALIAS event.
    YamlAliasEvent = 5
    # A SCALAR event.
    YamlScalarEvent = 6
    # A SEQUENCE-START event.
    YamlSequenceStartEvent = 7
    # A SEQUENCE-END event.
    YamlSequenceEndEvent = 8
    # A MAPPING-START event.
    YamlMappingStartEvent = 9
    # A MAPPING-END event.
    YamlMappingEndEvent = 10
  end
  # Mapping styles.
  enum YamlMappingStyleE
    # Let the emitter choose the style.
    YamlAnyMappingStyle = 0
    # The block mapping style.
    YamlBlockMappingStyle = 1
    # The flow mapping style.
    YamlFlowMappingStyle = 2
  end
  # Node types.
  enum YamlNodeTypeE
    # An empty node.
    YamlNoNode = 0
    # A scalar node.
    YamlScalarNode = 1
    # A sequence node.
    YamlSequenceNode = 2
    # A mapping node.
    YamlMappingNode = 3
  end
  # The states of the parser.
  enum YamlParserStateE
    # Expect STREAM-START.
    YamlParseStreamStartState = 0
    # Expect the beginning of an implicit document.
    YamlParseImplicitDocumentStartState = 1
    # Expect DOCUMENT-START.
    YamlParseDocumentStartState = 2
    # Expect the content of a document.
    YamlParseDocumentContentState = 3
    # Expect DOCUMENT-END.
    YamlParseDocumentEndState = 4
    # Expect a block node.
    YamlParseBlockNodeState = 5
    # Expect a block node or indentless sequence.
    YamlParseBlockNodeOrIndentlessSequenceState = 6
    # Expect a flow node.
    YamlParseFlowNodeState = 7
    # Expect the first entry of a block sequence.
    YamlParseBlockSequenceFirstEntryState = 8
    # Expect an entry of a block sequence.
    YamlParseBlockSequenceEntryState = 9
    # Expect an entry of an indentless sequence.
    YamlParseIndentlessSequenceEntryState = 10
    # Expect the first key of a block mapping.
    YamlParseBlockMappingFirstKeyState = 11
    # Expect a block mapping key.
    YamlParseBlockMappingKeyState = 12
    # Expect a block mapping value.
    YamlParseBlockMappingValueState = 13
    # Expect the first entry of a flow sequence.
    YamlParseFlowSequenceFirstEntryState = 14
    # Expect an entry of a flow sequence.
    YamlParseFlowSequenceEntryState = 15
    # Expect a key of an ordered mapping.
    YamlParseFlowSequenceEntryMappingKeyState = 16
    # Expect a value of an ordered mapping.
    YamlParseFlowSequenceEntryMappingValueState = 17
    # Expect the and of an ordered mapping entry.
    YamlParseFlowSequenceEntryMappingEndState = 18
    # Expect the first key of a flow mapping.
    YamlParseFlowMappingFirstKeyState = 19
    # Expect a key of a flow mapping.
    YamlParseFlowMappingKeyState = 20
    # Expect a value of a flow mapping.
    YamlParseFlowMappingValueState = 21
    # Expect an empty value of a flow mapping.
    YamlParseFlowMappingEmptyValueState = 22
    # Expect nothing.
    YamlParseEndState = 23
  end
  # Scalar styles.
  enum YamlScalarStyleE
    # Let the emitter choose the style.
    YamlAnyScalarStyle = 0
    # The plain scalar style.
    YamlPlainScalarStyle = 1
    # The single-quoted scalar style.
    YamlSingleQuotedScalarStyle = 2
    # The double-quoted scalar style.
    YamlDoubleQuotedScalarStyle = 3
    # The literal scalar style.
    YamlLiteralScalarStyle = 4
    # The folded scalar style.
    YamlFoldedScalarStyle = 5
  end
  # Sequence styles.
  enum YamlSequenceStyleE
    # Let the emitter choose the style.
    YamlAnySequenceStyle = 0
    # The block sequence style.
    YamlBlockSequenceStyle = 1
    # The flow sequence style.
    YamlFlowSequenceStyle = 2
  end
  # Token types.
  enum YamlTokenTypeE
    # An empty token.
    YamlNoToken = 0
    # A STREAM-START token.
    YamlStreamStartToken = 1
    # A STREAM-END token.
    YamlStreamEndToken = 2
    # A VERSION-DIRECTIVE token.
    YamlVersionDirectiveToken = 3
    # A TAG-DIRECTIVE token.
    YamlTagDirectiveToken = 4
    # A DOCUMENT-START token.
    YamlDocumentStartToken = 5
    # A DOCUMENT-END token.
    YamlDocumentEndToken = 6
    # A BLOCK-SEQUENCE-START token.
    YamlBlockSequenceStartToken = 7
    # A BLOCK-SEQUENCE-END token.
    YamlBlockMappingStartToken = 8
    # A BLOCK-END token.
    YamlBlockEndToken = 9
    # A FLOW-SEQUENCE-START token.
    YamlFlowSequenceStartToken = 10
    # A FLOW-SEQUENCE-END token.
    YamlFlowSequenceEndToken = 11
    # A FLOW-MAPPING-START token.
    YamlFlowMappingStartToken = 12
    # A FLOW-MAPPING-END token.
    YamlFlowMappingEndToken = 13
    # A BLOCK-ENTRY token.
    YamlBlockEntryToken = 14
    # A FLOW-ENTRY token.
    YamlFlowEntryToken = 15
    # A KEY token.
    YamlKeyToken = 16
    # A VALUE token.
    YamlValueToken = 17
    # An ALIAS token.
    YamlAliasToken = 18
    # An ANCHOR token.
    YamlAnchorToken = 19
    # A TAG token.
    YamlTagToken = 20
    # A SCALAR token.
    YamlScalarToken = 21
  end
  # Create an ALIAS event.
  fun alias_event_initialize = yaml_alias_event_initialize(event : YamlEventT*, anchor : YamlCharT*) : LibC::Int
  # Create a MAPPING node and attach it to the document.
  fun document_add_mapping = yaml_document_add_mapping(document : YamlDocumentT*, tag : YamlCharT*, style : YamlMappingStyleT) : LibC::Int
  # Create a SCALAR node and attach it to the document.
  fun document_add_scalar = yaml_document_add_scalar(document : YamlDocumentT*, tag : YamlCharT*, value : YamlCharT*, length : LibC::Int, style : YamlScalarStyleT) : LibC::Int
  # Create a SEQUENCE node and attach it to the document.
  fun document_add_sequence = yaml_document_add_sequence(document : YamlDocumentT*, tag : YamlCharT*, style : YamlSequenceStyleT) : LibC::Int
  # Add a pair of a key and a value to a MAPPING node.
  fun document_append_mapping_pair = yaml_document_append_mapping_pair(document : YamlDocumentT*, mapping : LibC::Int, key : LibC::Int, value : LibC::Int) : LibC::Int
  # Add an item to a SEQUENCE node.
  fun document_append_sequence_item = yaml_document_append_sequence_item(document : YamlDocumentT*, sequence : LibC::Int, item : LibC::Int) : LibC::Int
  # Delete a YAML document and all its nodes.
  fun document_delete = yaml_document_delete(document : YamlDocumentT*)
  # Create the DOCUMENT-END event.
  fun document_end_event_initialize = yaml_document_end_event_initialize(event : YamlEventT*, implicit : LibC::Int) : LibC::Int
  # Get a node of a YAML document.
  fun document_get_node = yaml_document_get_node(document : YamlDocumentT*, index : LibC::Int) : YamlNodeT*
  # Get the root of a YAML document node.
  fun document_get_root_node = yaml_document_get_root_node(document : YamlDocumentT*) : YamlNodeT*
  # Create a YAML document.
  fun document_initialize = yaml_document_initialize(document : YamlDocumentT*, version_directive : YamlVersionDirectiveT*, tag_directives_start : YamlTagDirectiveT*, tag_directives_end : YamlTagDirectiveT*, start_implicit : LibC::Int, end_implicit : LibC::Int) : LibC::Int
  # Create the DOCUMENT-START event.
  fun document_start_event_initialize = yaml_document_start_event_initialize(event : YamlEventT*, version_directive : YamlVersionDirectiveT*, tag_directives_start : YamlTagDirectiveT*, tag_directives_end : YamlTagDirectiveT*, implicit : LibC::Int) : LibC::Int
  # Finish a YAML stream.
  fun emitter_close = yaml_emitter_close(emitter : YamlEmitterT*) : LibC::Int
  # Destroy an emitter.
  fun emitter_delete = yaml_emitter_delete(emitter : YamlEmitterT*)
  # Emit a YAML document.
  fun emitter_dump = yaml_emitter_dump(emitter : YamlEmitterT*, document : YamlDocumentT*) : LibC::Int
  # Emit an event.
  fun emitter_emit = yaml_emitter_emit(emitter : YamlEmitterT*, event : YamlEventT*) : LibC::Int
  # Flush the accumulated characters to the output.
  fun emitter_flush = yaml_emitter_flush(emitter : YamlEmitterT*) : LibC::Int
  # Initialize an emitter.
  fun emitter_initialize = yaml_emitter_initialize(emitter : YamlEmitterT*) : LibC::Int
  # Start a YAML stream.
  fun emitter_open = yaml_emitter_open(emitter : YamlEmitterT*) : LibC::Int
  # Set the preferred line break.
  fun emitter_set_break = yaml_emitter_set_break(emitter : YamlEmitterT*, line_break : YamlBreakT)
  # Set if the output should be in the "canonical" format as in the YAML specification.
  fun emitter_set_canonical = yaml_emitter_set_canonical(emitter : YamlEmitterT*, canonical : LibC::Int)
  # Set the output encoding.
  fun emitter_set_encoding = yaml_emitter_set_encoding(emitter : YamlEmitterT*, encoding : YamlEncodingT)
  # Set the intendation increment.
  fun emitter_set_indent = yaml_emitter_set_indent(emitter : YamlEmitterT*, indent : LibC::Int)
  # Set a generic output handler.
  fun emitter_set_output = yaml_emitter_set_output(emitter : YamlEmitterT*, handler : (Void*, UInt8*, LibC::SizeT -> LibC::Int), data : Void*)
  # Set a file output.
  fun emitter_set_output_file = yaml_emitter_set_output_file(emitter : YamlEmitterT*, file : File*)
  # Set a string output.
  fun emitter_set_output_string = yaml_emitter_set_output_string(emitter : YamlEmitterT*, output : UInt8*, size : LibC::SizeT, size_written : LibC::SizeT*)
  # Set if unescaped non-ASCII characters are allowed.
  fun emitter_set_unicode = yaml_emitter_set_unicode(emitter : YamlEmitterT*, unicode : LibC::Int)
  # Set the preferred line width. -1 means unlimited.
  fun emitter_set_width = yaml_emitter_set_width(emitter : YamlEmitterT*, width : LibC::Int)
  # Free any memory allocated for an event object.
  fun event_delete = yaml_event_delete(event : YamlEventT*)
  # Get the library version numbers.
  fun get_version = yaml_get_version(major : LibC::Int*, minor : LibC::Int*, patch : LibC::Int*)
  # Get the library version as a string.
  fun get_version_string = yaml_get_version_string : LibC::Char*
  # Create a MAPPING-END event.
  fun mapping_end_event_initialize = yaml_mapping_end_event_initialize(event : YamlEventT*) : LibC::Int
  # Create a MAPPING-START event.
  fun mapping_start_event_initialize = yaml_mapping_start_event_initialize(event : YamlEventT*, anchor : YamlCharT*, tag : YamlCharT*, implicit : LibC::Int, style : YamlMappingStyleT) : LibC::Int
  # Destroy a parser.
  fun parser_delete = yaml_parser_delete(parser : YamlParserT*)
  # Initialize a parser.
  fun parser_initialize = yaml_parser_initialize(parser : YamlParserT*) : LibC::Int
  # Parse the input stream and produce the next YAML document.
  fun parser_load = yaml_parser_load(parser : YamlParserT*, document : YamlDocumentT*) : LibC::Int
  # Parse the input stream and produce the next parsing event.
  fun parser_parse = yaml_parser_parse(parser : YamlParserT*, event : YamlEventT*) : LibC::Int
  # Scan the input stream and produce the next token.
  fun parser_scan = yaml_parser_scan(parser : YamlParserT*, token : YamlTokenT*) : LibC::Int
  # Set the source encoding.
  fun parser_set_encoding = yaml_parser_set_encoding(parser : YamlParserT*, encoding : YamlEncodingT)
  # Set a generic input handler.
  fun parser_set_input = yaml_parser_set_input(parser : YamlParserT*, handler : (Void*, UInt8*, LibC::SizeT, LibC::SizeT* -> LibC::Int), data : Void*)
  # Set a file input.
  fun parser_set_input_file = yaml_parser_set_input_file(parser : YamlParserT*, file : File*)
  # Set a string input.
  fun parser_set_input_string = yaml_parser_set_input_string(parser : YamlParserT*, input : UInt8*, size : LibC::SizeT)
  # Create a SCALAR event.
  fun scalar_event_initialize = yaml_scalar_event_initialize(event : YamlEventT*, anchor : YamlCharT*, tag : YamlCharT*, value : YamlCharT*, length : LibC::Int, plain_implicit : LibC::Int, quoted_implicit : LibC::Int, style : YamlScalarStyleT) : LibC::Int
  # Create a SEQUENCE-END event.
  fun sequence_end_event_initialize = yaml_sequence_end_event_initialize(event : YamlEventT*) : LibC::Int
  # Create a SEQUENCE-START event.
  fun sequence_start_event_initialize = yaml_sequence_start_event_initialize(event : YamlEventT*, anchor : YamlCharT*, tag : YamlCharT*, implicit : LibC::Int, style : YamlSequenceStyleT) : LibC::Int
  # Create the STREAM-END event.
  fun stream_end_event_initialize = yaml_stream_end_event_initialize(event : YamlEventT*) : LibC::Int
  # Create the STREAM-START event.
  fun stream_start_event_initialize = yaml_stream_start_event_initialize(event : YamlEventT*, encoding : YamlEncodingT) : LibC::Int
  # Free any memory allocated for a token object.
  fun token_delete = yaml_token_delete(token : YamlTokenT*)

  struct X_IoFile
    _flags : LibC::Int
    _io_read_ptr : LibC::Char*
    _io_read_end : LibC::Char*
    _io_read_base : LibC::Char*
    _io_write_base : LibC::Char*
    _io_write_ptr : LibC::Char*
    _io_write_end : LibC::Char*
    _io_buf_base : LibC::Char*
    _io_buf_end : LibC::Char*
    _io_save_base : LibC::Char*
    _io_backup_base : LibC::Char*
    _io_save_end : LibC::Char*
    _markers : X_IoMarker*
    _chain : X_IoFile*
    _fileno : LibC::Int
    _flags2 : LibC::Int
    _old_offset : X__OffT
    _cur_column : LibC::UShort
    _vtable_offset : LibC::Char
    _shortbuf : LibC::Char[1]
    _lock : X_IoLockT*
    _offset : X__Off64T
    __pad1 : Void*
    __pad2 : Void*
    __pad3 : Void*
    __pad4 : Void*
    __pad5 : LibC::SizeT
    _mode : LibC::Int
    _unused2 : LibC::Char[20]
  end

  struct X_IoMarker
    _next : X_IoMarker*
    _sbuf : X_IoFile*
    _pos : LibC::Int
  end

  struct YamlAliasDataS
    # The anchor.
    anchor : YamlCharT*
    # The node id.
    index : LibC::Int
    # The anchor mark.
    mark : YamlMarkT
  end

  struct YamlDocumentS
    nodes : YamlDocumentSNodes
    # The version directive.
    version_directive : YamlVersionDirectiveT*
    tag_directives : YamlDocumentSTagDirectives
    # Is the document start indicator implicit?
    start_implicit : LibC::Int
    # Is the document end indicator implicit?
    end_implicit : LibC::Int
    # The beginning of the document.
    start_mark : YamlMarkT
    # The end of the document.
    end_mark : YamlMarkT
  end

  struct YamlDocumentSNodes
    # The beginning of the stack.
    start : YamlNodeT*
    # The end of the stack.
    _end : YamlNodeT*
    # The top of the stack.
    top : YamlNodeT*
  end

  struct YamlDocumentSTagDirectives
    # The beginning of the tag directives list.
    start : YamlTagDirectiveT*
    # The end of the tag directives list.
    _end : YamlTagDirectiveT*
  end

  struct YamlEmitterS
    # Error type.
    error : YamlErrorTypeT
    # Error description.
    problem : LibC::Char*
    # Write handler.
    write_handler : (Void*, UInt8*, LibC::SizeT -> LibC::Int)
    # A pointer for passing to the white handler.
    write_handler_data : Void*
    output : YamlEmitterSOutput
    buffer : YamlEmitterSBuffer
    raw_buffer : YamlEmitterSRawBuffer
    # The stream encoding.
    encoding : YamlEncodingT
    # If the output is in the canonical style?
    canonical : LibC::Int
    # The number of indentation spaces.
    best_indent : LibC::Int
    # The preferred width of the output lines.
    best_width : LibC::Int
    # Allow unescaped non-ASCII characters?
    unicode : LibC::Int
    # The preferred line break.
    line_break : YamlBreakT
    states : YamlEmitterSStates
    # The current emitter state.
    state : YamlEmitterStateT
    events : YamlEmitterSEvents
    indents : YamlEmitterSIndents
    tag_directives : YamlEmitterSTagDirectives
    # The current indentation level.
    indent : LibC::Int
    # The current flow level.
    flow_level : LibC::Int
    # Is it the document root context?
    root_context : LibC::Int
    # Is it a sequence context?
    sequence_context : LibC::Int
    # Is it a mapping context?
    mapping_context : LibC::Int
    # Is it a simple mapping key context?
    simple_key_context : LibC::Int
    # The current line.
    line : LibC::Int
    # The current column.
    column : LibC::Int
    # If the last character was a whitespace?
    whitespace : LibC::Int
    # If the last character was an indentation character (' ', '-', '?', ':')?
    indention : LibC::Int
    # If an explicit document end is required?
    open_ended : LibC::Int
    anchor_data : YamlEmitterSAnchorData
    tag_data : YamlEmitterSTagData
    scalar_data : YamlEmitterSScalarData
    # If the stream was already opened?
    opened : LibC::Int
    # If the stream was already closed?
    closed : LibC::Int
    anchors : YamlEmitterSAnchors*
    # The last assigned anchor id.
    last_anchor_id : LibC::Int
    # The currently emitted document.
    document : YamlDocumentT*
  end

  struct YamlEmitterSAnchorData
    # The anchor value.
    anchor : YamlCharT*
    # The anchor length.
    anchor_length : LibC::SizeT
    # Is it an alias?
    alias : LibC::Int
  end

  struct YamlEmitterSAnchors
    # The number of references.
    references : LibC::Int
    # The anchor id.
    anchor : LibC::Int
    # If the node has been emitted?
    serialized : LibC::Int
  end

  struct YamlEmitterSBuffer
    # The beginning of the buffer.
    start : YamlCharT*
    # The end of the buffer.
    _end : YamlCharT*
    # The current position of the buffer.
    pointer : YamlCharT*
    # The last filled position of the buffer.
    last : YamlCharT*
  end

  struct YamlEmitterSEvents
    # The beginning of the event queue.
    start : YamlEventT*
    # The end of the event queue.
    _end : YamlEventT*
    # The head of the event queue.
    head : YamlEventT*
    # The tail of the event queue.
    tail : YamlEventT*
  end

  struct YamlEmitterSIndents
    # The beginning of the stack.
    start : LibC::Int*
    # The end of the stack.
    _end : LibC::Int*
    # The top of the stack.
    top : LibC::Int*
  end

  struct YamlEmitterSOutputString
    # The buffer pointer.
    buffer : UInt8*
    # The buffer size.
    size : LibC::SizeT
    # The number of written bytes.
    size_written : LibC::SizeT*
  end

  struct YamlEmitterSRawBuffer
    # The beginning of the buffer.
    start : UInt8*
    # The end of the buffer.
    _end : UInt8*
    # The current position of the buffer.
    pointer : UInt8*
    # The last filled position of the buffer.
    last : UInt8*
  end

  struct YamlEmitterSScalarData
    # The scalar value.
    value : YamlCharT*
    # The scalar length.
    length : LibC::SizeT
    # Does the scalar contain line breaks?
    multiline : LibC::Int
    # Can the scalar be expessed in the flow plain style?
    flow_plain_allowed : LibC::Int
    # Can the scalar be expressed in the block plain style?
    block_plain_allowed : LibC::Int
    # Can the scalar be expressed in the single quoted style?
    single_quoted_allowed : LibC::Int
    # Can the scalar be expressed in the literal or folded styles?
    block_allowed : LibC::Int
    # The output style.
    style : YamlScalarStyleT
  end

  struct YamlEmitterSStates
    # The beginning of the stack.
    start : YamlEmitterStateT*
    # The end of the stack.
    _end : YamlEmitterStateT*
    # The top of the stack.
    top : YamlEmitterStateT*
  end

  struct YamlEmitterSTagData
    # The tag handle.
    handle : YamlCharT*
    # The tag handle length.
    handle_length : LibC::SizeT
    # The tag suffix.
    suffix : YamlCharT*
    # The tag suffix length.
    suffix_length : LibC::SizeT
  end

  struct YamlEmitterSTagDirectives
    # The beginning of the list.
    start : YamlTagDirectiveT*
    # The end of the list.
    _end : YamlTagDirectiveT*
    # The top of the list.
    top : YamlTagDirectiveT*
  end

  struct YamlEventS
    # The event type.
    type : YamlEventTypeT
    data : YamlEventSData
    # The beginning of the event.
    start_mark : YamlMarkT
    # The end of the event.
    end_mark : YamlMarkT
  end

  struct YamlEventSDataAlias
    # The anchor.
    anchor : YamlCharT*
  end

  struct YamlEventSDataDocumentEnd
    # Is the document end indicator implicit?
    implicit : LibC::Int
  end

  struct YamlEventSDataDocumentStart
    # The version directive.
    version_directive : YamlVersionDirectiveT*
    tag_directives : YamlEventSDataDocumentStartTagDirectives
    # Is the document indicator implicit?
    implicit : LibC::Int
  end

  struct YamlEventSDataDocumentStartTagDirectives
    # The beginning of the tag directives list.
    start : YamlTagDirectiveT*
    # The end of the tag directives list.
    _end : YamlTagDirectiveT*
  end

  struct YamlEventSDataMappingStart
    # The anchor.
    anchor : YamlCharT*
    # The tag.
    tag : YamlCharT*
    # Is the tag optional?
    implicit : LibC::Int
    # The mapping style.
    style : YamlMappingStyleT
  end

  struct YamlEventSDataScalar
    # The anchor.
    anchor : YamlCharT*
    # The tag.
    tag : YamlCharT*
    # The scalar value.
    value : YamlCharT*
    # The length of the scalar value.
    length : LibC::SizeT
    # Is the tag optional for the plain style?
    plain_implicit : LibC::Int
    # Is the tag optional for any non-plain style?
    quoted_implicit : LibC::Int
    # The scalar style.
    style : YamlScalarStyleT
  end

  struct YamlEventSDataSequenceStart
    # The anchor.
    anchor : YamlCharT*
    # The tag.
    tag : YamlCharT*
    # Is the tag optional?
    implicit : LibC::Int
    # The sequence style.
    style : YamlSequenceStyleT
  end

  struct YamlEventSDataStreamStart
    # The document encoding.
    encoding : YamlEncodingT
  end

  struct YamlMarkS
    # The position index.
    index : LibC::SizeT
    # The position line.
    line : LibC::SizeT
    # The position column.
    column : LibC::SizeT
  end

  struct YamlNodePairS
    # The key of the element.
    key : LibC::Int
    # The value of the element.
    value : LibC::Int
  end

  struct YamlNodeS
    # The node type.
    type : YamlNodeTypeT
    # The node tag.
    tag : YamlCharT*
    data : YamlNodeSData
    # The beginning of the node.
    start_mark : YamlMarkT
    # The end of the node.
    end_mark : YamlMarkT
  end

  struct YamlNodeSDataMapping
    pairs : YamlNodeSDataMappingPairs
    # The mapping style.
    style : YamlMappingStyleT
  end

  struct YamlNodeSDataMappingPairs
    # The beginning of the stack.
    start : YamlNodePairT*
    # The end of the stack.
    _end : YamlNodePairT*
    # The top of the stack.
    top : YamlNodePairT*
  end

  struct YamlNodeSDataScalar
    # The scalar value.
    value : YamlCharT*
    # The length of the scalar value.
    length : LibC::SizeT
    # The scalar style.
    style : YamlScalarStyleT
  end

  struct YamlNodeSDataSequence
    items : YamlNodeSDataSequenceItems
    # The sequence style.
    style : YamlSequenceStyleT
  end

  struct YamlNodeSDataSequenceItems
    # The beginning of the stack.
    start : YamlNodeItemT*
    # The end of the stack.
    _end : YamlNodeItemT*
    # The top of the stack.
    top : YamlNodeItemT*
  end

  struct YamlParserS
    # Error type.
    error : YamlErrorTypeT
    # Error description.
    problem : LibC::Char*
    # The byte about which the problem occured.
    problem_offset : LibC::SizeT
    # The problematic value ( -1 is none).
    problem_value : LibC::Int
    # The problem position.
    problem_mark : YamlMarkT
    # The error context.
    context : LibC::Char*
    # The context position.
    context_mark : YamlMarkT
    # Read handler.
    read_handler : (Void*, UInt8*, LibC::SizeT, LibC::SizeT* -> LibC::Int)
    # A pointer for passing to the read handler.
    read_handler_data : Void*
    input : YamlParserSInput
    # EOF flag
    eof : LibC::Int
    buffer : YamlParserSBuffer
    unread : LibC::SizeT
    raw_buffer : YamlParserSRawBuffer
    # The input encoding.
    encoding : YamlEncodingT
    # The offset of the current position (in bytes).
    offset : LibC::SizeT
    # The mark of the current position.
    mark : YamlMarkT
    # Have we started to scan the input stream?
    stream_start_produced : LibC::Int
    # Have we reached the end of the input stream?
    stream_end_produced : LibC::Int
    # The number of unclosed '[' and '{' indicators.
    flow_level : LibC::Int
    tokens : YamlParserSTokens
    # The number of tokens fetched from the queue.
    tokens_parsed : LibC::SizeT
    token_available : LibC::Int
    indents : YamlParserSIndents
    # The current indentation level.
    indent : LibC::Int
    # May a simple key occur at the current position?
    simple_key_allowed : LibC::Int
    simple_keys : YamlParserSSimpleKeys
    states : YamlParserSStates
    # The current parser state.
    state : YamlParserStateT
    marks : YamlParserSMarks
    tag_directives : YamlParserSTagDirectives
    aliases : YamlParserSAliases
    # The currently parsed document.
    document : YamlDocumentT*
  end

  struct YamlParserSAliases
    # The beginning of the list.
    start : YamlAliasDataT*
    # The end of the list.
    _end : YamlAliasDataT*
    # The top of the list.
    top : YamlAliasDataT*
  end

  struct YamlParserSBuffer
    # The beginning of the buffer.
    start : YamlCharT*
    # The end of the buffer.
    _end : YamlCharT*
    # The current position of the buffer.
    pointer : YamlCharT*
    # The last filled position of the buffer.
    last : YamlCharT*
  end

  struct YamlParserSIndents
    # The beginning of the stack.
    start : LibC::Int*
    # The end of the stack.
    _end : LibC::Int*
    # The top of the stack.
    top : LibC::Int*
  end

  struct YamlParserSInputString
    # The string start pointer.
    start : UInt8*
    # The string end pointer.
    _end : UInt8*
    # The string current position.
    current : UInt8*
  end

  struct YamlParserSMarks
    # The beginning of the stack.
    start : YamlMarkT*
    # The end of the stack.
    _end : YamlMarkT*
    # The top of the stack.
    top : YamlMarkT*
  end

  struct YamlParserSRawBuffer
    # The beginning of the buffer.
    start : UInt8*
    # The end of the buffer.
    _end : UInt8*
    # The current position of the buffer.
    pointer : UInt8*
    # The last filled position of the buffer.
    last : UInt8*
  end

  struct YamlParserSSimpleKeys
    # The beginning of the stack.
    start : YamlSimpleKeyT*
    # The end of the stack.
    _end : YamlSimpleKeyT*
    # The top of the stack.
    top : YamlSimpleKeyT*
  end

  struct YamlParserSStates
    # The beginning of the stack.
    start : YamlParserStateT*
    # The end of the stack.
    _end : YamlParserStateT*
    # The top of the stack.
    top : YamlParserStateT*
  end

  struct YamlParserSTagDirectives
    # The beginning of the list.
    start : YamlTagDirectiveT*
    # The end of the list.
    _end : YamlTagDirectiveT*
    # The top of the list.
    top : YamlTagDirectiveT*
  end

  struct YamlParserSTokens
    # The beginning of the tokens queue.
    start : YamlTokenT*
    # The end of the tokens queue.
    _end : YamlTokenT*
    # The head of the tokens queue.
    head : YamlTokenT*
    # The tail of the tokens queue.
    tail : YamlTokenT*
  end

  struct YamlSimpleKeyS
    # Is a simple key possible?
    possible : LibC::Int
    # Is a simple key required?
    required : LibC::Int
    # The number of the token.
    token_number : LibC::SizeT
    # The position mark.
    mark : YamlMarkT
  end

  struct YamlTagDirectiveS
    # The tag handle.
    handle : YamlCharT*
    # The tag prefix.
    prefix : YamlCharT*
  end

  struct YamlTokenS
    # The token type.
    type : YamlTokenTypeT
    data : YamlTokenSData
    # The beginning of the token.
    start_mark : YamlMarkT
    # The end of the token.
    end_mark : YamlMarkT
  end

  struct YamlTokenSDataAlias
    # The alias value.
    value : YamlCharT*
  end

  struct YamlTokenSDataAnchor
    # The anchor value.
    value : YamlCharT*
  end

  struct YamlTokenSDataScalar
    # The scalar value.
    value : YamlCharT*
    # The length of the scalar value.
    length : LibC::SizeT
    # The scalar style.
    style : YamlScalarStyleT
  end

  struct YamlTokenSDataStreamStart
    # The stream encoding.
    encoding : YamlEncodingT
  end

  struct YamlTokenSDataTag
    # The tag handle.
    handle : YamlCharT*
    # The tag suffix.
    suffix : YamlCharT*
  end

  struct YamlTokenSDataTagDirective
    # The tag handle.
    handle : YamlCharT*
    # The tag prefix.
    prefix : YamlCharT*
  end

  struct YamlTokenSDataVersionDirective
    # The major version number.
    major : LibC::Int
    # The minor version number.
    minor : LibC::Int
  end

  struct YamlVersionDirectiveS
    # The major version number.
    major : LibC::Int
    # The minor version number.
    minor : LibC::Int
  end

  type File = X_IoFile
  type YamlAliasDataT = YamlAliasDataS
  type YamlBreakT = YamlBreakE
  type YamlDocumentT = YamlDocumentS
  type YamlEmitterStateT = YamlEmitterStateE
  type YamlEmitterT = YamlEmitterS
  type YamlEncodingT = YamlEncodingE
  type YamlErrorTypeT = YamlErrorTypeE
  type YamlEventT = YamlEventS
  type YamlEventTypeT = YamlEventTypeE
  type YamlMappingStyleT = YamlMappingStyleE
  type YamlMarkT = YamlMarkS
  type YamlNodePairT = YamlNodePairS
  type YamlNodeT = YamlNodeS
  type YamlNodeTypeT = YamlNodeTypeE
  type YamlParserStateT = YamlParserStateE
  type YamlParserT = YamlParserS
  type YamlScalarStyleT = YamlScalarStyleE
  type YamlSequenceStyleT = YamlSequenceStyleE
  type YamlSimpleKeyT = YamlSimpleKeyS
  type YamlTagDirectiveT = YamlTagDirectiveS
  type YamlTokenT = YamlTokenS
  type YamlTokenTypeT = YamlTokenTypeE
  type YamlVersionDirectiveT = YamlVersionDirectiveS

  union YamlEmitterSOutput
    string : YamlEmitterSOutputString
    # File output data.
    file : File*
  end

  union YamlEventSData
    stream_start : YamlEventSDataStreamStart
    document_start : YamlEventSDataDocumentStart
    document_end : YamlEventSDataDocumentEnd
    alias : YamlEventSDataAlias
    scalar : YamlEventSDataScalar
    sequence_start : YamlEventSDataSequenceStart
    mapping_start : YamlEventSDataMappingStart
  end

  union YamlNodeSData
    scalar : YamlNodeSDataScalar
    sequence : YamlNodeSDataSequence
    mapping : YamlNodeSDataMapping
  end

  union YamlParserSInput
    string : YamlParserSInputString
    # File input data.
    file : File*
  end

  union YamlTokenSData
    stream_start : YamlTokenSDataStreamStart
    alias : YamlTokenSDataAlias
    anchor : YamlTokenSDataAnchor
    tag : YamlTokenSDataTag
    scalar : YamlTokenSDataScalar
    version_directive : YamlTokenSDataVersionDirective
    tag_directive : YamlTokenSDataTagDirective
  end
end
