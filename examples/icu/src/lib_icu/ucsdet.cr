@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs icu-uc icu-i18n icu-io icu-lx icu-le || printf %s '-licuio -licui18n -liculx -licule -licuuc -licudata'`")]
lib LibICU
  fun ucsdet_close = ucsdet_close_52(ucsd : UCharsetDetector)
  fun ucsdet_detect = ucsdet_detect_52(ucsd : UCharsetDetector, status : UErrorCode*) : UCharsetMatch
  fun ucsdet_detect_all = ucsdet_detectAll_52(ucsd : UCharsetDetector, matches_found : Int32T*, status : UErrorCode*) : UCharsetMatch*
  fun ucsdet_enable_input_filter = ucsdet_enableInputFilter_52(ucsd : UCharsetDetector, filter : UBool) : UBool
  fun ucsdet_get_all_detectable_charsets = ucsdet_getAllDetectableCharsets_52(ucsd : UCharsetDetector, status : UErrorCode*) : UEnumeration
  fun ucsdet_get_confidence = ucsdet_getConfidence_52(ucsm : UCharsetMatch, status : UErrorCode*) : Int32T
  fun ucsdet_get_detectable_charsets = ucsdet_getDetectableCharsets_52(ucsd : UCharsetDetector, status : UErrorCode*) : UEnumeration
  fun ucsdet_get_language = ucsdet_getLanguage_52(ucsm : UCharsetMatch, status : UErrorCode*) : LibC::Char*
  fun ucsdet_get_name = ucsdet_getName_52(ucsm : UCharsetMatch, status : UErrorCode*) : LibC::Char*
  fun ucsdet_get_u_chars = ucsdet_getUChars_52(ucsm : UCharsetMatch, buf : UChar*, cap : Int32T, status : UErrorCode*) : Int32T
  fun ucsdet_is_input_filter_enabled = ucsdet_isInputFilterEnabled_52(ucsd : UCharsetDetector) : UBool
  fun ucsdet_open = ucsdet_open_52(status : UErrorCode*) : UCharsetDetector
  fun ucsdet_set_declared_encoding = ucsdet_setDeclaredEncoding_52(ucsd : UCharsetDetector, encoding : LibC::Char*, length : Int32T, status : UErrorCode*)
  fun ucsdet_set_detectable_charset = ucsdet_setDetectableCharset_52(ucsd : UCharsetDetector, encoding : LibC::Char*, enabled : UBool, status : UErrorCode*)
  fun ucsdet_set_text = ucsdet_setText_52(ucsd : UCharsetDetector, text_in : LibC::Char*, len : Int32T, status : UErrorCode*)
  type UCharsetDetector = Void*
  type UCharsetMatch = Void*
end
