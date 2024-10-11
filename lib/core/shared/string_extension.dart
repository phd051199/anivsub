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
}
