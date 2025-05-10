import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppTextStyles {
  static TextStyle title({double? fontSize}) => GoogleFonts.inter(
        color: AppColors.black,
        fontSize: fontSize ?? 40,
        fontWeight: FontWeight.w700,
        height: 1.58,
      );

  static TextStyle body1({double? fontSize}) => GoogleFonts.inter(
        color: AppColors.textGray,
        fontSize: fontSize ?? 20,
        fontWeight: FontWeight.w400,
        height: 1.58,
      );

  static TextStyle cardTitle = GoogleFonts.inter(
    color: AppColors.white,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.58,
  );

  static TextStyle cardBody = GoogleFonts.inter(
    color: AppColors.white,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    height: 1.58,
  );
  static TextStyle get heading => GoogleFonts.plusJakartaSans(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.primaryText,
        height: 1.13, // 59px line height
      );

  static TextStyle get headingTablet => heading.copyWith(
        fontSize: 28,
        height: 1.14, // 48px line height
      );

  static TextStyle get headingMobile => heading.copyWith(
        fontSize: 23,
        height: 1.25, // 40px line height
      );

  static TextStyle get body => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.textGray,
        height: 1.6, // 32px line height
      );

  static TextStyle get bodyTablet => body.copyWith(
        fontSize: 13,
        height: 1.56, // 28px line height
      );

  static TextStyle get bodyMobile => body.copyWith(
        fontSize: 12,
        height: 1.625, // 26px line height
      );

  static TextStyle get badge => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.secondaryText,
      );
}
