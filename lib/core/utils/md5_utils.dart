import 'dart:convert';

import 'package:crypto/crypto.dart';

class Md5Utils {
  static String hash(String text) {
    return md5.convert(utf8.encode(text)).toString();
  }
}
