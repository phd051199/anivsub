import 'dart:convert';

import 'package:anivsub/core/shared/string_extension.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class StringUtils {
  static String capitalize(String text) {
    return text.replaceFirst(text[0], text[0].toUpperCase());
  }

  static String md5HashAsciiString(String text) {
    return md5.convert(utf8.encode(text)).toString();
  }
}

String cacheKeyBuilder(RequestOptions options) {
  if (options.method.toUpperCase() == 'POST') {
    final base64Data = options.data.toString().toBase64();
    return base64Data.length > 255 ? base64Data.substring(0, 255) : base64Data;
  }
  final queryParams = options.queryParameters.entries
      .map((e) => '${e.key}=${e.value}')
      .join('&');
  return '${options.path}${queryParams.isNotEmpty ? '?$queryParams' : ''}';
}

String formatTimestamp(dynamic timestamp, {bool withTime = true}) {
  if (timestamp == null) return '';

  final DateTime dateTime = DateTime.parse(timestamp.toString()).toLocal();
  final DateTime now = DateTime.now().toLocal();

  final DateFormat timeFormat = DateFormat('HH:mm', 'vi_VN');
  final DateFormat dateFormat = DateFormat('dd/MM/yyyy', 'vi_VN');

  if (dateTime.year == now.year &&
      dateTime.month == now.month &&
      dateTime.day == now.day) {
    return withTime ? 'Hôm nay, ${timeFormat.format(dateTime)}' : 'Hôm nay';
  } else {
    return withTime
        ? '${dateFormat.format(dateTime)} ${timeFormat.format(dateTime)}'
        : dateFormat.format(dateTime);
  }
}
