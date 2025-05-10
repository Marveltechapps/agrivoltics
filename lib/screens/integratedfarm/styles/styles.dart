import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static const Color textPrimary = Color(0xFF000000);
  static const Color textSecondary = Color(0xFF4B4B4B);

  static const double breakpointLarge = 991;
  static const double breakpointSmall = 640;

  static const double paddingLarge = 30.0;
  static const double paddingSmall = 20.0;

  static const double gapLarge = 65.0;
  static const double gapMedium = 40.0;
  static const double gapSmall = 32.0;

  static TextStyle getTitleStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= breakpointSmall) {
      return GoogleFonts.inter(
        fontSize: 23,
        fontWeight: FontWeight.w700,
        height: 1.4,
        color: textPrimary,
      );
    } else if (screenWidth <= breakpointLarge) {
      return GoogleFonts.inter(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        height: 1.58,
        color: textPrimary,
      );
    }

    return GoogleFonts.inter(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      height: 1.58,
      color: textPrimary,
    );
  }

  static TextStyle getBodyStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= breakpointSmall) {
      return GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: textSecondary,
      );
    } else if (screenWidth <= breakpointLarge) {
      return GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.58,
        color: textSecondary,
      );
    }

    return GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.58,
      color: textSecondary,
    );
  }
}
