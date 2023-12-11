import 'package:intl/intl.dart';

class NumberFormatter {
  static String format(int number) {
    NumberFormat formatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp. ',
      decimalDigits: 0,
    );
    return formatter.format(number);
  }
}
