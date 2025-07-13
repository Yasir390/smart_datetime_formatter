import 'formatter.dart';
import 'pattern_enum.dart';
import 'relative_time.dart';
import 'language_enum.dart';

extension SmartDateExtensions on DateTime {
  String format(DatePattern pattern, {DateLocale locale = DateLocale.english}) {
    return SmartDateTimeFormatter.format(this, pattern: pattern, locale: locale);
  }

  String getRelativeTime({DateLocale locale = DateLocale.english}) {
    return RelativeTimeFormatter.timeAgo(this, locale: locale);
  }
}
