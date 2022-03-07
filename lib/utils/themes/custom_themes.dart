import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sathwaras/utils/themes/color_palette.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: ColorPalette.primarySwatch,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
      primaryColor: ColorPalette.scaffoldColor,
      scaffoldBackgroundColor: ColorPalette.backgroundColor,
      textTheme: TextTheme(
        headline1: GoogleFonts.openSans(
          fontSize: 26,
          color: ColorPalette.primaryFontColor,
        ),
        headline2: GoogleFonts.openSans(
          fontSize: 24,
          color: ColorPalette.primaryFontColor,
        ),
        headline3: GoogleFonts.openSans(
          fontSize: 22,
          color: ColorPalette.primaryFontColor,
        ),
        headline4: GoogleFonts.openSans(
          fontSize: 20,
          color: ColorPalette.primaryFontColor,
        ),
        headline5: GoogleFonts.openSans(
          fontSize: 18,
          color: ColorPalette.primaryFontColor,
        ),
        headline6: GoogleFonts.openSans(
          fontSize: 16,
          color: ColorPalette.primaryFontColor,
        ),
        subtitle1: GoogleFonts.openSans(
          fontSize: 14,
          color: ColorPalette.primaryFontColor,
        ),
        subtitle2: GoogleFonts.openSans(
          fontSize: 12,
          color: ColorPalette.primaryFontColor,
        ),
        headlineLarge: GoogleFonts.openSans(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: ColorPalette.primaryFontColor,
        ),
      ),
    );
  }
}
