import 'package:agri_voltics/screens/careers/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle headingStyle(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GoogleFonts.inter(
      color: const Color(0xFF222222),
      fontWeight: FontWeight.w700,
      letterSpacing: -1.637,
      fontSize: screenWidth > 991
          ? 50
          : screenWidth > 640
              ? 40
              : 40,
      height: screenWidth > 991
          ? 92 / 79
          : screenWidth > 640
              ? 70 / 60
              : 48 / 40,
    );
  }

  static TextStyle descriptionStyle(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GoogleFonts.inter(
      color: const Color(0x99444444),
      fontWeight: FontWeight.w400,
      fontSize: screenWidth > 991
          ? 18
          : screenWidth > 640
              ? 16
              : 14,
      height: screenWidth > 991
          ? 1.5
          : screenWidth > 640
              ? 32 / 24
              : 26 / 18,
    );
  }

  static const String fontFamily = 'Inter';

  static TextStyle getHeadingStyle(
    BuildContext context, {
    required double fontSize,
    required double lineHeight,
    FontWeight weight = FontWeight.w700,
    Color color = const Color(0xFF222222),
    double? letterSpacing,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      height: lineHeight / fontSize,
      fontWeight: weight,
      color: color,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle getBodyStyle(
    BuildContext context, {
    required double fontSize,
    required double lineHeight,
    FontWeight weight = FontWeight.w500,
    Color color = const Color(0x99444444),
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      height: lineHeight / fontSize,
      fontWeight: weight,
      color: color,
    );
  }

  static TextStyle title = GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static TextStyle inputText = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static TextStyle submitButton = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    height: 1.4,
  );
}
