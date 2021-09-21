@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs icu-uc icu-i18n icu-io 2> /dev/null|| printf %s '-licuio -licui18n -licuuc -licudata'`")]
lib LibICU
  alias Int64T = X__Int64T
  alias X__Int64T = LibC::Long
  enum UBreakIteratorType
    UbrkCharacter = 0
    UbrkWord      = 1
    UbrkLine      = 2
    UbrkSentence  = 3
    UbrkTitle     = 4
    UbrkCount     = 5
  end
  fun ubrk_close = ubrk_close_66(bi : UBreakIterator)
  fun ubrk_count_available = ubrk_countAvailable_66 : Int32T
  fun ubrk_current = ubrk_current_66(bi : UBreakIterator) : Int32T
  fun ubrk_first = ubrk_first_66(bi : UBreakIterator) : Int32T
  fun ubrk_following = ubrk_following_66(bi : UBreakIterator, offset : Int32T) : Int32T
  fun ubrk_get_available = ubrk_getAvailable_66(index : Int32T) : LibC::Char*
  fun ubrk_get_binary_rules = ubrk_getBinaryRules_66(bi : UBreakIterator, binary_rules : Uint8T*, rules_capacity : Int32T, status : UErrorCode*) : Int32T
  fun ubrk_get_locale_by_type = ubrk_getLocaleByType_66(bi : UBreakIterator, type : ULocDataLocaleType, status : UErrorCode*) : LibC::Char*
  fun ubrk_get_rule_status = ubrk_getRuleStatus_66(bi : UBreakIterator) : Int32T
  fun ubrk_get_rule_status_vec = ubrk_getRuleStatusVec_66(bi : UBreakIterator, fill_in_vec : Int32T*, capacity : Int32T, status : UErrorCode*) : Int32T
  fun ubrk_is_boundary = ubrk_isBoundary_66(bi : UBreakIterator, offset : Int32T) : UBool
  fun ubrk_last = ubrk_last_66(bi : UBreakIterator) : Int32T
  fun ubrk_next = ubrk_next_66(bi : UBreakIterator) : Int32T
  fun ubrk_open = ubrk_open_66(type : UBreakIteratorType, locale : LibC::Char*, text : UChar*, text_length : Int32T, status : UErrorCode*) : UBreakIterator
  fun ubrk_open_binary_rules = ubrk_openBinaryRules_66(binary_rules : Uint8T*, rules_length : Int32T, text : UChar*, text_length : Int32T, status : UErrorCode*) : UBreakIterator
  fun ubrk_open_rules = ubrk_openRules_66(rules : UChar*, rules_length : Int32T, text : UChar*, text_length : Int32T, parse_err : UParseError*, status : UErrorCode*) : UBreakIterator
  fun ubrk_preceding = ubrk_preceding_66(bi : UBreakIterator, offset : Int32T) : Int32T
  fun ubrk_previous = ubrk_previous_66(bi : UBreakIterator) : Int32T
  fun ubrk_refresh_u_text = ubrk_refreshUText_66(bi : UBreakIterator, text : UText*, status : UErrorCode*)
  fun ubrk_safe_clone = ubrk_safeClone_66(bi : UBreakIterator, stack_buffer : Void*, p_buffer_size : Int32T*, status : UErrorCode*) : UBreakIterator
  fun ubrk_set_text = ubrk_setText_66(bi : UBreakIterator, text : UChar*, text_length : Int32T, status : UErrorCode*)
  fun ubrk_set_u_text = ubrk_setUText_66(bi : UBreakIterator, text : UText*, status : UErrorCode*)

  struct UParseError
    line : Int32T
    offset : Int32T
    pre_context : UChar[16]
    post_context : UChar[16]
  end

  struct UText
    magic : Uint32T
    flags : Int32T
    provider_properties : Int32T
    size_of_struct : Int32T
    chunk_native_limit : Int64T
    extra_size : Int32T
    native_indexing_limit : Int32T
    chunk_native_start : Int64T
    chunk_offset : Int32T
    chunk_length : Int32T
    chunk_contents : UChar*
    p_funcs : UTextFuncs*
    p_extra : Void*
    context : Void*
    p : Void*
    q : Void*
    r : Void*
    priv_p : Void*
    a : Int64T
    b : Int32T
    c : Int32T
    priv_a : Int64T
    priv_b : Int32T
    priv_c : Int32T
  end

  struct UTextFuncs
    table_size : Int32T
    reserved1 : Int32T
    reserved2 : Int32T
    reserved3 : Int32T
    clone : (UText*, UText*, UBool, UErrorCode* -> UText*)
    native_length : (UText* -> Int64T)
    access : (UText*, Int64T, UBool -> UBool)
    extract : (UText*, Int64T, Int64T, UChar*, Int32T, UErrorCode* -> Int32T)
    replace : (UText*, Int64T, Int64T, UChar*, Int32T, UErrorCode* -> Int32T)
    copy : (UText*, Int64T, Int64T, Int64T, UBool, UErrorCode* -> Void)
    map_offset_to_native : (UText* -> Int64T)
    map_native_index_to_utf16 : (UText*, Int64T -> Int32T)
    close : (UText* -> Void)
    spare1 : (UText* -> Void)
    spare2 : (UText* -> Void)
    spare3 : (UText* -> Void)
  end

  type UBreakIterator = Void*
end
