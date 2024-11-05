import 'dart:io';

import 'package:anivsub/shared/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeUtils {
  const DateTimeUtils._();

  static String formatTimestamp(
    dynamic timestamp,
    BuildContext context, {
    bool withTime = true,
  }) {
    if (timestamp == null) return '';

    final DateTime dateTime = DateTime.parse(timestamp.toString()).toLocal();
    final String locale = Intl.getCurrentLocale();

    final DateFormat timeFormat = DateFormat('HH:mm', locale);
    final DateFormat dateFormat = DateFormat('dd/MM/yyyy', locale);

    final String timeStr = timeFormat.format(dateTime);
    final String dateStr = dateFormat.format(dateTime);

    if (dateTime.isToday) {
      return withTime ? '${context.l10n.today}, $timeStr' : context.l10n.today;
    } else if (dateTime.isYesterday) {
      return withTime
          ? '${context.l10n.yesterday}, $timeStr'
          : context.l10n.yesterday;
    }

    return withTime ? '$dateStr $timeStr' : dateStr;
  }

  static String getFBDateFormat() {
    if (Platform.localeName.startsWith('vi')) {
      return 'dd \'tháng\' MM \'lúc\' HH:mm';
    }
    return 'MMM d \'at\' h:mm a';
  }
}
