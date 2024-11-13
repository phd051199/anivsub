import 'dart:io';

import 'package:anivsub/shared/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeUtils {
  const DateTimeUtils._();

  /// Formats a timestamp into a human-readable string
  ///
  /// Takes a [timestamp] and formats it based on whether it's today, yesterday,
  /// or another date. The format is localized based on the current context.
  ///
  /// Parameters:
  /// - [timestamp]: The timestamp to format (can be String or DateTime)
  /// - [context]: BuildContext for accessing localizations
  /// - [withTime]: Whether to include the time in the output (defaults to true)
  ///
  /// Returns a formatted string like:
  /// - "Today, 14:30" (for today's date with time)
  /// - "Yesterday" (for yesterday's date without time)
  /// - "31/12/2023 23:59" (for other dates with time)
  ///
  /// Example:
  /// ```dart
  /// final str = DateTimeUtils.formatTimestamp(
  ///   "2023-12-31T23:59:59",
  ///   context,
  ///   withTime: true
  /// );
  /// print(str); // "31/12/2023 23:59"
  /// ```
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

  /// Gets the Facebook-style date format string based on locale
  ///
  /// Returns a date format pattern string that matches Facebook's date formatting:
  /// - For Vietnamese locale: "dd 'tháng' MM 'lúc' HH:mm"
  /// - For other locales: "MMM d 'at' h:mm a"
  ///
  /// Example:
  /// ```dart
  /// final format = DateTimeUtils.getFBDateFormat();
  /// // Returns "dd 'tháng' MM 'lúc' HH:mm" for Vietnamese
  /// // Returns "MMM d 'at' h:mm a" for English
  /// ```
  static String getFBDateFormat() {
    if (Platform.localeName.startsWith('vi')) {
      return 'dd \'tháng\' MM \'lúc\' HH:mm';
    }
    return 'MMM d \'at\' h:mm a';
  }
}
