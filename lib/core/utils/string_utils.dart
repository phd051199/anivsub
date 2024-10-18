import 'dart:convert';

import 'package:crypto/crypto.dart';

class StringUtils {
  static String capitalize(String text) {
    return text.replaceFirst(text[0], text[0].toUpperCase());
  }

  static String md5HashAsciiString(String text) {
    return md5.convert(utf8.encode(text)).toString();
  }
}
