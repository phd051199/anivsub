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

  String parseChapName() {
    final rSpace = RegExp(r' ');
    return 'tap-${_removeAccents()}'.toLowerCase().replaceAll(rSpace, '-');
  }

  String? extractId() {
    final RegExp regex = RegExp(r'a(\d+)/?$');
    final Match? match = regex.firstMatch(this);
    return match?.group(1);
  }

  String _removeAccents() {
    final accentedCharacters = {
      'à': 'a',
      'á': 'a',
      'â': 'a',
      'ã': 'a',
      'ä': 'a',
      'å': 'a',
      'è': 'e',
      'é': 'e',
      'ê': 'e',
      'ë': 'e',
      'ì': 'i',
      'í': 'i',
      'î': 'i',
      'ï': 'i',
      'ò': 'o',
      'ó': 'o',
      'ô': 'o',
      'õ': 'o',
      'ö': 'o',
      'ù': 'u',
      'ú': 'u',
      'û': 'u',
      'ü': 'u',
      'ý': 'y',
      'ÿ': 'y',
      'ñ': 'n',
    };

    return toLowerCase()
        .split('')
        .map((char) => accentedCharacters[char] ?? char)
        .join('');
  }
}
