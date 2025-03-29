import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return year == yesterday.year && month == yesterday.month && day == yesterday.day;
  }

  bool get isInThisWeek {
    final now = DateTime.now();
    final startOfWeek = now.subtract(Duration(days: now.weekday % 7));
    final endOfWeek = startOfWeek.add(const Duration(days: 6));

    return isAfter(startOfWeek) && isBefore(endOfWeek.add(const Duration(days: 1)));
  }

  bool get isLastWeek {
    final now = DateTime.now();
    final startOfThisWeek = now.subtract(Duration(days: now.weekday % 7));
    final endOfLastWeek = startOfThisWeek.subtract(const Duration(days: 1));
    final startOfLastWeek = endOfLastWeek.subtract(const Duration(days: 6));

    return isAfter(startOfLastWeek.subtract(const Duration(seconds: 1))) &&
        isBefore(endOfLastWeek.add(const Duration(days: 1)));
  }

  bool get isInThisMonth {
    final now = DateTime.now();
    return year == now.year && month == now.month;
  }

  bool get isLastMonth {
    final now = DateTime.now();
    final lastMonth = DateTime(now.year, now.month - 1);

    return year == lastMonth.year && month == lastMonth.month;
  }
}

extension DateTimeNullX on DateTime? {
  String get toReadableDate => this != null ? DateFormat.yMMMMd().format(this!) : '';
}
