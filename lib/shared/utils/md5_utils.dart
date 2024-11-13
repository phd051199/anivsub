import 'dart:convert';

import 'package:crypto/crypto.dart';

class Md5Utils {
  const Md5Utils._();

  /// Generates an MD5 hash of the given text
  ///
  /// Takes a [text] string and returns its MD5 hash as a hexadecimal string.
  /// The text is first encoded to UTF-8 bytes before hashing.
  ///
  /// Example:
  /// ```dart
  /// final hash = Md5Utils.hash('hello world');
  /// print(hash); // '5eb63bbbe01eeed093cb22bb8f5acdc3'
  /// ```
  static String hash(String text) {
    return md5.convert(utf8.encode(text)).toString();
  }
}
