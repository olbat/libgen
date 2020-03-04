@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs icu-uc icu-i18n icu-io 2> /dev/null|| printf %s '-licuio -licui18n -licuuc -licudata'`")]
lib LibICU
  fun ucsdet_close = ucsdet_close_60(ucsd : UCharsetDetector)
  fun ucsdet_detect = ucsdet_detect_60(ucsd : UCharsetDetector, status : UErrorCode*) : UCharsetMatch
  fun ucsdet_detect_all = ucsdet_detectAll_60(ucsd : UCharsetDetector, matches_found : Int32T*, status : UErrorCode*) : UCharsetMatch*
  fun ucsdet_enable_input_filter = ucsdet_enableInputFilter_60(ucsd : UCharsetDetector, filter : UBool) : UBool
  fun ucsdet_get_all_detectable_charsets = ucsdet_getAllDetectableCharsets_60(ucsd : UCharsetDetector, status : UErrorCode*) : UEnumeration
  fun ucsdet_get_confidence = ucsdet_getConfidence_60(ucsm : UCharsetMatch, status : UErrorCode*) : Int32T
  fun ucsdet_get_detectable_charsets = ucsdet_getDetectableCharsets_60(ucsd : UCharsetDetector, status : UErrorCode*) : UEnumeration
  fun ucsdet_get_language = ucsdet_getLanguage_60(ucsm : UCharsetMatch, status : UErrorCode*) : LibC::Char*
  fun ucsdet_get_name = ucsdet_getName_60(ucsm : UCharsetMatch, status : UErrorCode*) : LibC::Char*
  fun ucsdet_get_u_chars = ucsdet_getUChars_60(ucsm : UCharsetMatch, buf : UChar*, cap : Int32T, status : UErrorCode*) : Int32T
  fun ucsdet_is_input_filter_enabled = ucsdet_isInputFilterEnabled_60(ucsd : UCharsetDetector) : UBool
  fun ucsdet_open = ucsdet_open_60(status : UErrorCode*) : UCharsetDetector
  fun ucsdet_set_declared_encoding = ucsdet_setDeclaredEncoding_60(ucsd : UCharsetDetector, encoding : LibC::Char*, length : Int32T, status : UErrorCode*)
  fun ucsdet_set_detectable_charset = ucsdet_setDetectableCharset_60(ucsd : UCharsetDetector, encoding : LibC::Char*, enabled : UBool, status : UErrorCode*)
  fun ucsdet_set_text = ucsdet_setText_60(ucsd : UCharsetDetector, text_in : LibC::Char*, len : Int32T, status : UErrorCode*)
  type UCharsetDetector = Void*
  type UCharsetMatch = Void*
end
