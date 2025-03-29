import 'package:intl/intl.dart';

extension DoubleX on double {
  String currencyFormat() => NumberFormat.currency(symbol: '').format(this);
}

extension DoubleXNull on double? {
  String currencyFormat() => NumberFormat.currency(symbol: '').format(this ?? 0);
}
