import 'package:intl/intl.dart';
import 'language_enum.dart';

class RangeFormatter {
  static String formatRange(DateTime start, DateTime end, {DateLocale locale = DateLocale.english}) {
    // Ensure start is before end
    if (start.isAfter(end)) {
      final temp = start;
      start = end;
      end = temp;
    }

    final localeCode = locale.code;

    final sameMonth = start.month == end.month && start.year == end.year;
    final sameYear = start.year == end.year;

    if (sameMonth) {
      // Example: 12–14 July 2025
      return '${DateFormat('dd', localeCode).format(start)}–${DateFormat('dd MMMM yyyy', localeCode).format(end)}';
    } else if (sameYear) {
      // Example: 12 Mar – 15 Jul 2025
      return '${DateFormat('dd MMM', localeCode).format(start)} – ${DateFormat('dd MMM yyyy', localeCode).format(end)}';
    } else {
      // Example: 12 Mar 2024 – 15 Jul 2025
      return '${DateFormat('dd MMM yyyy', localeCode).format(start)} – ${DateFormat('dd MMM yyyy', localeCode).format(end)}';
    }
  }
}
