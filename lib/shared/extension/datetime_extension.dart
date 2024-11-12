extension DateTimeExtensions on DateTime {
  bool get isToday {
    final now = DateTime.now().toLocal();
    return year == now.year && month == now.month && day == now.day;
  }

  bool get isYesterday {
    final yesterday =
        DateTime.now().toLocal().subtract(const Duration(days: 1));
    return year == yesterday.year &&
        month == yesterday.month &&
        day == yesterday.day;
  }
}
