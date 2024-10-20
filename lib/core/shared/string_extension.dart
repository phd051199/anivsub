import 'dart:convert';

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
    final string = this;
    final cleaned = string.replaceAll('/phim/', '');
    final lastDashIndex = cleaned.lastIndexOf('-');
    return lastDashIndex != -1 ? cleaned.substring(0, lastDashIndex) : cleaned;
  }

  String toBase64() {
    return base64Encode(utf8.encode(this));
  }

  bool isNotNumeric() {
    return !RegExp(r'^\d+$').hasMatch(this);
  }

  String cleanPathToView() {
    return replaceAll('xem-phim.html', '');
  }
}
