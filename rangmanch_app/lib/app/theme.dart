import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildRangmanchTheme() {
  const background = Color(0xFF0B1020);
  const surface = Color(0xFF141B34);
  const accent = Color(0xFF7C5CFF);
  const accent2 = Color(0xFFFF6B9D);
  const textPrimary = Color(0xFFF4F5F7);

  final textTheme = GoogleFonts.dmSansTextTheme().copyWith(
    headlineLarge: GoogleFonts.playfairDisplay(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: textPrimary,
    ),
    headlineMedium: GoogleFonts.playfairDisplay(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: textPrimary,
    ),
    titleLarge: GoogleFonts.dmSans(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: textPrimary,
    ),
    bodyLarge: GoogleFonts.dmSans(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: textPrimary,
    ),
    bodyMedium: GoogleFonts.dmSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: textPrimary.withAlpha(224),
    ),
    labelLarge: GoogleFonts.dmSans(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: textPrimary,
    ),
  );

  final colorScheme = ColorScheme.fromSeed(
    seedColor: accent,
    brightness: Brightness.dark,
    surface: surface,
    primary: accent,
    secondary: accent2,
  );

  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: colorScheme,
    scaffoldBackgroundColor: background,
    textTheme: textTheme,
    cardTheme: CardThemeData(
      color: surface,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: surface.withAlpha(230),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: accent, width: 1.4),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: surface,
      selectedColor: accent.withAlpha(61),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(999),
      ),
      side: BorderSide.none,
      labelStyle: textTheme.labelLarge,
    ),
  );
}