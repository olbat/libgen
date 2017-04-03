@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs icu-uc icu-i18n icu-io icu-lx icu-le || printf %s '-licuio -licui18n -liculx -licule -licuuc -licudata'`")]
lib LibICU
  alias UCurrRegistryKey = Void*
  enum UCurrNameStyle
    UcurrSymbolName = 0
    UcurrLongName   = 1
  end
  fun ucurr_count_currencies = ucurr_countCurrencies_52(locale : LibC::Char*, date : UDate, ec : UErrorCode*) : Int32T
  fun ucurr_for_locale = ucurr_forLocale_52(locale : LibC::Char*, buff : UChar*, buff_capacity : Int32T, ec : UErrorCode*) : Int32T
  fun ucurr_for_locale_and_date = ucurr_forLocaleAndDate_52(locale : LibC::Char*, date : UDate, index : Int32T, buff : UChar*, buff_capacity : Int32T, ec : UErrorCode*) : Int32T
  fun ucurr_get_default_fraction_digits = ucurr_getDefaultFractionDigits_52(currency : UChar*, ec : UErrorCode*) : Int32T
  fun ucurr_get_keyword_values_for_locale = ucurr_getKeywordValuesForLocale_52(key : LibC::Char*, locale : LibC::Char*, commonly_used : UBool, status : UErrorCode*) : UEnumeration
  fun ucurr_get_name = ucurr_getName_52(currency : UChar*, locale : LibC::Char*, name_style : UCurrNameStyle, is_choice_format : UBool*, len : Int32T*, ec : UErrorCode*) : UChar*
  fun ucurr_get_numeric_code = ucurr_getNumericCode_52(currency : UChar*) : Int32T
  fun ucurr_get_plural_name = ucurr_getPluralName_52(currency : UChar*, locale : LibC::Char*, is_choice_format : UBool*, plural_count : LibC::Char*, len : Int32T*, ec : UErrorCode*) : UChar*
  fun ucurr_get_rounding_increment = ucurr_getRoundingIncrement_52(currency : UChar*, ec : UErrorCode*) : LibC::Double
  fun ucurr_is_available = ucurr_isAvailable_52(iso_code : UChar*, from : UDate, to : UDate, error_code : UErrorCode*) : UBool
  fun ucurr_open_iso_currencies = ucurr_openISOCurrencies_52(curr_type : Uint32T, p_error_code : UErrorCode*) : UEnumeration
  fun ucurr_register = ucurr_register_52(iso_code : UChar*, locale : LibC::Char*, status : UErrorCode*) : UCurrRegistryKey
  fun ucurr_unregister = ucurr_unregister_52(key : UCurrRegistryKey, status : UErrorCode*) : UBool
end
