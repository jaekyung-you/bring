import 'package:intl/intl.dart';

class NumberFormatter {

  String formatNumberWithPlus(int num) {
    if (num >= 1000) return "1000+";
    if (num >= 100) return "100+";
    if (num >= 10) return "10+";
    return "$num";
  }

  String numberWithComma(int num) {
    var f = NumberFormat('###,###,###,###');
    return f.format(num);
  }
}