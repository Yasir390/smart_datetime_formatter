import 'language_enum.dart';

class RelativeTimeFormatter {
  static String timeAgo(DateTime dateTime, {DateLocale locale = DateLocale.english}) {
    final now = DateTime.now();
    final diff = now.difference(dateTime);

    switch (locale) {
      case DateLocale.bangla:
        if (diff.inSeconds < 60) return 'এইমাত্র';
        if (diff.inMinutes < 60) return '${diff.inMinutes} মিনিট আগে';
        if (diff.inHours < 24) return '${diff.inHours} ঘন্টা আগে';
        if (diff.inDays == 1) return 'গতকাল';
        return '${diff.inDays} দিন আগে';

      case DateLocale.arabic:
        if (diff.inSeconds < 60) return 'الآن';
        if (diff.inMinutes < 60) return '${diff.inMinutes} دقيقة مضت';
        if (diff.inHours < 24) return '${diff.inHours} ساعة مضت';
        if (diff.inDays == 1) return 'أمس';
        return '${diff.inDays} يوم مضت';

      case DateLocale.english:
      default:
        if (diff.inSeconds < 60) return 'just now';
        if (diff.inMinutes < 60) return '${diff.inMinutes} minutes ago';
        if (diff.inHours < 24) return '${diff.inHours} hours ago';
        if (diff.inDays == 1) return 'yesterday';
        return '${diff.inDays} days ago';
    }
  }
}
