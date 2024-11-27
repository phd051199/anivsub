import 'dart:convert';

import '../const/const.dart';

extension StringExtension on String {
  int extractFirstInt() {
    final match = RegExp(r'\d+').firstMatch(this);
    if (match == null) {
      return 0;
    }

    return int.tryParse(match.group(0)!) ?? 0;
  }

  String unTranslated() {
    return this;
  }

  String cleanPath() {
    final cleaned = replaceAll('/phim/', '');
    final lastDashIndex = cleaned.lastIndexOf('-');
    return lastDashIndex != -1 ? cleaned.substring(0, lastDashIndex) : cleaned;
  }

  String toBase64() {
    return base64Encode(utf8.encode(this));
  }

  bool isNotNumeric() {
    return !RegExp(r'^\d+$').hasMatch(this);
  }

  String? cleanPathToView() {
    if (!contains('/phim')) return null;
    return replaceAll('xem-phim.html', '');
  }

  String? parseSeasonId() {
    if (isEmpty) return null;

    final parts = split('/');
    if (parts.length < 3) return null;

    return parts[2];
  }

  String parseChapName() {
    final rSpace = RegExp(r' ');
    return 'tap-${_removeAccents()}'.toLowerCase().replaceAll(rSpace, '-');
  }

  Map<String, dynamic> parseRT() {
    final cleanData = replaceAll(RegExp(r'^for \(;;\);'), '');
    return jsonDecode(cleanData);
  }

  String? extractId() {
    final RegExp regex = RegExp(r'a(\d+)/?$');
    final Match? match = regex.firstMatch(this);
    return match?.group(1);
  }

  String _removeAccents() {
    return toLowerCase()
        .split('')
        .map((char) => accentedCharacters[char] ?? char)
        .join('');
  }

  bool isValidHost() {
    try {
      final host = Uri.parse(this).host;
      return host.isNotEmpty &&
          RegExp(r'animevietsub\..*', caseSensitive: false).hasMatch(host);
    } catch (e) {
      return false;
    }
  }
}
