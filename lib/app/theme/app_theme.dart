import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme.fromBrightness({
    required this.brightness,
    required this.seedColor,
  }) {
    colorScheme = ColorScheme.fromSeed(
      brightness: brightness,
      seedColor: seedColor,
    );
  }
  final Brightness brightness;
  final Color seedColor;
  late ColorScheme colorScheme;

  ThemeData toThemeData() {
    return ThemeData.from(
      colorScheme: colorScheme,
      useMaterial3: true,
    ).copyWith(
      textTheme: GoogleFonts.openSansTextTheme(
        ThemeData(
          colorScheme: colorScheme,
        ).textTheme,
      ),
      inputDecorationTheme: InputDecorationTheme(
        prefixIconColor: colorScheme.primary,
        suffixIconColor: colorScheme.primary,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: colorScheme.error,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: colorScheme.error,
            width: 2,
          ),
        ),
      ),
    );
  }
}
