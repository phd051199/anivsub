extension NumberFormatting on num {
  String formatNumber() {
    if (this >= 1e9) {
      return '${(this / 1e9).toStringAsFixed(1).replaceAll('.0', '')}B';
    } else if (this >= 1e6) {
      return '${(this / 1e6).toStringAsFixed(1).replaceAll('.0', '')}M';
    } else if (this >= 1e3) {
      return '${(this / 1e3).toStringAsFixed(0)}k';
    } else {
      return toString();
    }
  }
}
