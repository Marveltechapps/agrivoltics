import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static const String fontFamily = 'Open Sans';
  static const Color primaryTextColor = Color(0xFF29436D);

  static TextStyle get titleLarge => GoogleFonts.openSans(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: primaryTextColor,
        height: 1.2,
      );

  static TextStyle get titleMedium => GoogleFonts.openSans(
        fontWeight: FontWeight.w700,
        fontSize: 26,
        color: primaryTextColor,
        height: 1.23,
      );

  static TextStyle get titleSmall => GoogleFonts.openSans(
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: primaryTextColor,
        height: 1.17,
      );

  static TextStyle get bodyLarge => GoogleFonts.openSans(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: primaryTextColor,
        height: 1.4,
      );

  static TextStyle get bodyMedium => GoogleFonts.openSans(
        fontWeight: FontWeight.w400,
        fontSize: 18,
        color: primaryTextColor,
        height: 1.4,
      );

  static TextStyle get bodySmall => GoogleFonts.openSans(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: primaryTextColor,
        height: 1.5,
      );
}
