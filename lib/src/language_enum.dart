enum DateLocale {
  english,
  bangla,
  arabic,
}

extension LocaleExtension on DateLocale {
  String get code {
    switch (this) {
      case DateLocale.bangla: return 'bn_BD';
      case DateLocale.arabic: return 'ar';
      case DateLocale.english:
      default:
        return 'en';
    }
  }
}
