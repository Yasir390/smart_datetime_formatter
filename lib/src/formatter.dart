import 'package:intl/intl.dart';
import 'package:smart_datetime_formatter/smart_datetime_formatter.dart';

class SmartDateTimeFormatter {
  static String format(DateTime date, {
    DatePattern pattern = DatePattern.ddMMYYYY,
    DateLocale locale = DateLocale.english,
  }) {
    final formatStr = _getPatternString(pattern);
    return DateFormat(formatStr, locale.code).format(date);
  }

  static String formatCustom(DateTime date, String customPattern, {
    DateLocale locale = DateLocale.english,
  }) {
    return DateFormat(customPattern, locale.code).format(date);
  }

  static String _getPatternString(DatePattern pattern) {
    switch (pattern) {
      case DatePattern.ddMMYYYY:
        return 'dd-MM-yyyy';
      case DatePattern.MMDDYYYY:
        return 'MM-dd-yyyy';
      case DatePattern.yyyyMMdd:
        return 'yyyy-MM-dd';
      case DatePattern.ddMMMyy:
        return 'dd-MMM-yy';
      case DatePattern.ddMMMyyyy:
        return 'dd-MMM-yyyy';
      case DatePattern.ddMMMyyyyEEEE:
        return 'dd-MMM-yyyy EEEE';
      case DatePattern.yyyyMMMMdd:
        return 'yyyy MMMM dd';
      case DatePattern.EEEEddMMMMyyyy:
        return 'EEEE dd MMMM yyyy';
      case DatePattern.time12Hour:
        return 'hh:mm a';
      case DatePattern.time24Hour:
        return 'HH:mm';
      case DatePattern.dateTimeWithTime:
        return 'dd-MMM-yyyy hh:mm a';
      case DatePattern.fullDateTime:
        return 'EEEE, dd MMMM yyyy \'at\' hh:mm a';
      case DatePattern.yyyyMMdd_HHmmss: // ✅ New
        return 'yyyy-MM-dd HH:mm:ss';
      case DatePattern.iso8601: // ✅ New (ISO standard)
        return "yyyy-MM-dd'T'HH:mm:ss";
    }
  }
}
