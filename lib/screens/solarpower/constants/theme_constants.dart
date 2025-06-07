import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeConstants {
  static const Color primaryTextColor = Color(0xFF222222);
  static const Color borderColor = Color(0xFF7B9540);
  static const Color backgroundColor = Color(0xFFE9EDC9);

  static TextStyle getTitleStyle(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width > 991
        ? 35
        : MediaQuery.of(context).size.width > 640
            ? 30
            : 26;

    return GoogleFonts.inter(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      color: primaryTextColor,
    );
  }

  static TextStyle getTitleStyle2(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width > 991
        ? 30
        : MediaQuery.of(context).size.width > 640
            ? 25
            : 23;

    return GoogleFonts.inter(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      color: primaryTextColor,
    );
  }

  static TextStyle getSubtitleStyle(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width > 991
        ? 16
        : MediaQuery.of(context).size.width > 640
            ? 16
            : 14;

    return GoogleFonts.openSans(
      fontSize: fontSize,
      color: primaryTextColor,
      height: 1.4,
    );
  }

  static TextStyle getBodyTextStyle(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width > 991
        ? 18
        : MediaQuery.of(context).size.width > 640
            ? 18
            : 16;

    return GoogleFonts.openSans(
      fontSize: fontSize,
      color: primaryTextColor,
      height: 1.5,
    );
  }

  static EdgeInsets getSectionPadding(BuildContext context) {
    if (MediaQuery.of(context).size.width > 991) {
      return const EdgeInsets.symmetric(horizontal: 60, vertical: 43);
    } else if (MediaQuery.of(context).size.width > 640) {
      return const EdgeInsets.symmetric(horizontal: 40, vertical: 10);
    }
    return const EdgeInsets.all(20);
  }

  static EdgeInsets getContentPadding(BuildContext context) {
    if (MediaQuery.of(context).size.width > 991) {
      return const EdgeInsets.symmetric(horizontal: 17, vertical: 81);
    } else if (MediaQuery.of(context).size.width > 640) {
      return const EdgeInsets.symmetric(horizontal: 20, vertical: 40);
    }
    return const EdgeInsets.symmetric(horizontal: 15, vertical: 30);
  }
}
