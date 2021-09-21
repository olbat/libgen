@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs icu-uc icu-i18n icu-io 2> /dev/null|| printf %s '-licuio -licui18n -licuuc -licudata'`")]
lib LibICU
  alias UCalendar = Void*
  alias UDateFormat = Void*
  alias UDateFormatOpener = (UDateFormatStyle, UDateFormatStyle, LibC::Char*, UChar*, Int32T, UChar*, Int32T, UErrorCode* -> UDateFormat*)
  alias UNumberFormat = Void*
  enum UCalendarDateFields
    UcalEra               =  0
    UcalYear              =  1
    UcalMonth             =  2
    UcalWeekOfYear        =  3
    UcalWeekOfMonth       =  4
    UcalDate              =  5
    UcalDayOfYear         =  6
    UcalDayOfWeek         =  7
    UcalDayOfWeekInMonth  =  8
    UcalAmPm              =  9
    UcalHour              = 10
    UcalHourOfDay         = 11
    UcalMinute            = 12
    UcalSecond            = 13
    UcalMillisecond       = 14
    UcalZoneOffset        = 15
    UcalDstOffset         = 16
    UcalYearWoy           = 17
    UcalDowLocal          = 18
    UcalExtendedYear      = 19
    UcalJulianDay         = 20
    UcalMillisecondsInDay = 21
    UcalIsLeapMonth       = 22
    UcalFieldCount        = 23
    UcalDayOfMonth        =  5
  end
  enum UDateFormatBooleanAttribute
    UdatParseAllowWhitespace          = 0
    UdatParseAllowNumeric             = 1
    UdatParsePartialLiteralMatch      = 2
    UdatParseMultiplePatternsForMatch = 3
    UdatBooleanAttributeCount         = 4
  end
  enum UDateFormatField
    UdatEraField                        =  0
    UdatYearField                       =  1
    UdatMonthField                      =  2
    UdatDateField                       =  3
    UdatHourOfDay1Field                 =  4
    UdatHourOfDay0Field                 =  5
    UdatMinuteField                     =  6
    UdatSecondField                     =  7
    UdatFractionalSecondField           =  8
    UdatDayOfWeekField                  =  9
    UdatDayOfYearField                  = 10
    UdatDayOfWeekInMonthField           = 11
    UdatWeekOfYearField                 = 12
    UdatWeekOfMonthField                = 13
    UdatAmPmField                       = 14
    UdatHour1Field                      = 15
    UdatHour0Field                      = 16
    UdatTimezoneField                   = 17
    UdatYearWoyField                    = 18
    UdatDowLocalField                   = 19
    UdatExtendedYearField               = 20
    UdatJulianDayField                  = 21
    UdatMillisecondsInDayField          = 22
    UdatTimezoneRfcField                = 23
    UdatTimezoneGenericField            = 24
    UdatStandaloneDayField              = 25
    UdatStandaloneMonthField            = 26
    UdatQuarterField                    = 27
    UdatStandaloneQuarterField          = 28
    UdatTimezoneSpecialField            = 29
    UdatYearNameField                   = 30
    UdatTimezoneLocalizedGmtOffsetField = 31
    UdatTimezoneIsoField                = 32
    UdatTimezoneIsoLocalField           = 33
    UdatRelatedYearField                = 34
    UdatAmPmMidnightNoonField           = 35
    UdatFlexibleDayPeriodField          = 36
    UdatTimeSeparatorField              = 37
    UdatFieldCount                      = 38
  end
  enum UDateFormatStyle
    UdatFull           =   0
    UdatLong           =   1
    UdatMedium         =   2
    UdatShort          =   3
    UdatDefault        =   2
    UdatRelative       = 128
    UdatFullRelative   = 128
    UdatLongRelative   = 129
    UdatMediumRelative = 130
    UdatShortRelative  = 131
    UdatNone           =  -1
    UdatPattern        =  -2
    UdatIgnore         =  -2
  end
  enum UDateFormatSymbolType
    UdatEras                      =  0
    UdatMonths                    =  1
    UdatShortMonths               =  2
    UdatWeekdays                  =  3
    UdatShortWeekdays             =  4
    UdatAmPms                     =  5
    UdatLocalizedChars            =  6
    UdatEraNames                  =  7
    UdatNarrowMonths              =  8
    UdatNarrowWeekdays            =  9
    UdatStandaloneMonths          = 10
    UdatStandaloneShortMonths     = 11
    UdatStandaloneNarrowMonths    = 12
    UdatStandaloneWeekdays        = 13
    UdatStandaloneShortWeekdays   = 14
    UdatStandaloneNarrowWeekdays  = 15
    UdatQuarters                  = 16
    UdatShortQuarters             = 17
    UdatStandaloneQuarters        = 18
    UdatStandaloneShortQuarters   = 19
    UdatShorterWeekdays           = 20
    UdatStandaloneShorterWeekdays = 21
    UdatCyclicYearsWide           = 22
    UdatCyclicYearsAbbreviated    = 23
    UdatCyclicYearsNarrow         = 24
    UdatZodiacNamesWide           = 25
    UdatZodiacNamesAbbreviated    = 26
    UdatZodiacNamesNarrow         = 27
  end
  enum UDisplayContext
    UdispctxStandardNames                        =   0
    UdispctxDialectNames                         =   1
    UdispctxCapitalizationNone                   = 256
    UdispctxCapitalizationForMiddleOfSentence    = 257
    UdispctxCapitalizationForBeginningOfSentence = 258
    UdispctxCapitalizationForUiListOrMenu        = 259
    UdispctxCapitalizationForStandalone          = 260
    UdispctxLengthFull                           = 512
    UdispctxLengthShort                          = 513
    UdispctxSubstitute                           = 768
    UdispctxNoSubstitute                         = 769
  end
  enum UDisplayContextType
    UdispctxTypeDialectHandling    = 0
    UdispctxTypeCapitalization     = 1
    UdispctxTypeDisplayLength      = 2
    UdispctxTypeSubstituteHandling = 3
  end
  fun udat_adopt_number_format = udat_adoptNumberFormat_66(fmt : UDateFormat*, number_format_to_adopt : UNumberFormat*)
  fun udat_adopt_number_format_for_fields = udat_adoptNumberFormatForFields_66(fmt : UDateFormat*, fields : UChar*, number_format_to_set : UNumberFormat*, status : UErrorCode*)
  fun udat_apply_pattern = udat_applyPattern_66(format : UDateFormat*, localized : UBool, pattern : UChar*, pattern_length : Int32T)
  fun udat_apply_pattern_relative = udat_applyPatternRelative_66(format : UDateFormat*, date_pattern : UChar*, date_pattern_length : Int32T, time_pattern : UChar*, time_pattern_length : Int32T, status : UErrorCode*)
  fun udat_clone = udat_clone_66(fmt : UDateFormat*, status : UErrorCode*) : UDateFormat*
  fun udat_close = udat_close_66(format : UDateFormat*)
  fun udat_count_available = udat_countAvailable_66 : Int32T
  fun udat_count_symbols = udat_countSymbols_66(fmt : UDateFormat*, type : UDateFormatSymbolType) : Int32T
  fun udat_format = udat_format_66(format : UDateFormat*, date_to_format : UDate, result : UChar*, result_length : Int32T, position : UFieldPosition*, status : UErrorCode*) : Int32T
  fun udat_format_calendar = udat_formatCalendar_66(format : UDateFormat*, calendar : UCalendar*, result : UChar*, capacity : Int32T, position : UFieldPosition*, status : UErrorCode*) : Int32T
  fun udat_format_calendar_for_fields = udat_formatCalendarForFields_66(format : UDateFormat*, calendar : UCalendar*, result : UChar*, capacity : Int32T, fpositer : UFieldPositionIterator, status : UErrorCode*) : Int32T
  fun udat_format_for_fields = udat_formatForFields_66(format : UDateFormat*, date_to_format : UDate, result : UChar*, result_length : Int32T, fpositer : UFieldPositionIterator, status : UErrorCode*) : Int32T
  fun udat_get2_digit_year_start = udat_get2DigitYearStart_66(fmt : UDateFormat*, status : UErrorCode*) : UDate
  fun udat_get_available = udat_getAvailable_66(locale_index : Int32T) : LibC::Char*
  fun udat_get_boolean_attribute = udat_getBooleanAttribute_66(fmt : UDateFormat*, attr : UDateFormatBooleanAttribute, status : UErrorCode*) : UBool
  fun udat_get_calendar = udat_getCalendar_66(fmt : UDateFormat*) : UCalendar*
  fun udat_get_context = udat_getContext_66(fmt : UDateFormat*, type : UDisplayContextType, status : UErrorCode*) : UDisplayContext
  fun udat_get_locale_by_type = udat_getLocaleByType_66(fmt : UDateFormat*, type : ULocDataLocaleType, status : UErrorCode*) : LibC::Char*
  fun udat_get_number_format = udat_getNumberFormat_66(fmt : UDateFormat*) : UNumberFormat*
  fun udat_get_number_format_for_field = udat_getNumberFormatForField_66(fmt : UDateFormat*, field : UChar) : UNumberFormat*
  fun udat_get_symbols = udat_getSymbols_66(fmt : UDateFormat*, type : UDateFormatSymbolType, symbol_index : Int32T, result : UChar*, result_length : Int32T, status : UErrorCode*) : Int32T
  fun udat_is_lenient = udat_isLenient_66(fmt : UDateFormat*) : UBool
  fun udat_open = udat_open_66(time_style : UDateFormatStyle, date_style : UDateFormatStyle, locale : LibC::Char*, tz_id : UChar*, tz_id_length : Int32T, pattern : UChar*, pattern_length : Int32T, status : UErrorCode*) : UDateFormat*
  fun udat_parse = udat_parse_66(format : UDateFormat*, text : UChar*, text_length : Int32T, parse_pos : Int32T*, status : UErrorCode*) : UDate
  fun udat_parse_calendar = udat_parseCalendar_66(format : UDateFormat*, calendar : UCalendar*, text : UChar*, text_length : Int32T, parse_pos : Int32T*, status : UErrorCode*)
  fun udat_register_opener = udat_registerOpener_66(opener : UDateFormatOpener, status : UErrorCode*)
  fun udat_set2_digit_year_start = udat_set2DigitYearStart_66(fmt : UDateFormat*, d : UDate, status : UErrorCode*)
  fun udat_set_boolean_attribute = udat_setBooleanAttribute_66(fmt : UDateFormat*, attr : UDateFormatBooleanAttribute, new_value : UBool, status : UErrorCode*)
  fun udat_set_calendar = udat_setCalendar_66(fmt : UDateFormat*, calendar_to_set : UCalendar*)
  fun udat_set_context = udat_setContext_66(fmt : UDateFormat*, value : UDisplayContext, status : UErrorCode*)
  fun udat_set_lenient = udat_setLenient_66(fmt : UDateFormat*, is_lenient : UBool)
  fun udat_set_number_format = udat_setNumberFormat_66(fmt : UDateFormat*, number_format_to_set : UNumberFormat*)
  fun udat_set_symbols = udat_setSymbols_66(format : UDateFormat*, type : UDateFormatSymbolType, symbol_index : Int32T, value : UChar*, value_length : Int32T, status : UErrorCode*)
  fun udat_to_calendar_date_field = udat_toCalendarDateField_66(field : UDateFormatField) : UCalendarDateFields
  fun udat_to_pattern = udat_toPattern_66(fmt : UDateFormat*, localized : UBool, result : UChar*, result_length : Int32T, status : UErrorCode*) : Int32T
  fun udat_to_pattern_relative_date = udat_toPatternRelativeDate_66(fmt : UDateFormat*, result : UChar*, result_length : Int32T, status : UErrorCode*) : Int32T
  fun udat_to_pattern_relative_time = udat_toPatternRelativeTime_66(fmt : UDateFormat*, result : UChar*, result_length : Int32T, status : UErrorCode*) : Int32T
  fun udat_unregister_opener = udat_unregisterOpener_66(opener : UDateFormatOpener, status : UErrorCode*) : UDateFormatOpener

  struct UFieldPosition
    field : Int32T
    begin_index : Int32T
    end_index : Int32T
  end

  type UFieldPositionIterator = Void*
end
