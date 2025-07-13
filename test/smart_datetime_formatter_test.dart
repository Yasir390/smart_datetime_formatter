// import 'package:flutter_test/flutter_test.dart';

// import 'package:smart_datetime_formatter/smart_datetime_formatter.dart';

// void main() {
//   test('adds one to input values', () {
//     final calculator = Calculator();
//     expect(calculator.addOne(2), 3);
//     expect(calculator.addOne(-7), -6);
//     expect(calculator.addOne(0), 1);
//   });
// }
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_datetime_formatter/smart_datetime_formatter.dart';

void main() {
  final date = DateTime(2025, 3, 12);

  group('SmartDateTimeFormatter', () {
    test('formats date using enum', () {
      final formatted = SmartDateTimeFormatter.format(date, pattern: DatePattern.ddMMMyyyy);
      expect(formatted, '12-Mar-2025');
    });

    test('returns relative time', () {
      final fiveMinAgo = DateTime.now().subtract(Duration(minutes: 5));
      final relative = fiveMinAgo.getRelativeTime();
      expect(relative.contains('minute') || relative.contains('মিনিট'), true);
    });

    test('formats with Bangla locale', () {
      final formatted = date.format(DatePattern.ddMMMyyyyEEEE, locale: DateLocale.bangla);
      expect(formatted.contains('বুধবার'), true); // Wednesday in Bangla
    });
  });
}
