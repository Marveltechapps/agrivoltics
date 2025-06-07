import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FontSizes {
  static double scale(BuildContext context, double base) {
    double width = MediaQuery.of(context).size.width;

    if (width < 400) return base * 0.5; // Small phones
    if (width < 480) return base * 0.5; // Normal phones
    if (width < 768) return base * 0.6; // Large phones/small tablets
    if (width <= 1024) return base * 0.9; // Tablets
    return base * 1.2; // Desktop / Web
  }

  static double headline1(BuildContext context) => scale(context, 32);
  static double headline2(BuildContext context) => scale(context, 28);
  static double subtitle1(BuildContext context) => scale(context, 20);
  static double bodyText(BuildContext context) => scale(context, 16);
  static double caption(BuildContext context) => scale(context, 12);
}

class AppColors {
  static const Color primary = Color(0xFF7B9540);
  static const Color background = Color(0xFFF3F8F2);
  static const Color text = Color(0xFF222222);
  static const Color secondaryText = Color(0xFF444444);
  static const Color white = Color(0xFFFFFFFF);
}

class AppColors2 {
  static const Color footerBackground = Color(0xFF7B9540);
  static const Color primary = Color(0xFF7B9540);
  static const Color darkText = Color(0xFF222222);
  static const Color yellowBadge = Color(0xFFFFD02F);
  static const Color titleText = Color(0xFF0F172A);
  static const Color white = Colors.white;
}

class AppTextStyles {
  static const String interFont = 'Inter';
  static const String openSansFont = 'Open Sans';
  static const String robotoFont = 'Roboto';
  static const String poppinsFont = 'Poppins';
  static TextStyle badge = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors2.darkText,
  );

  static TextStyle title = GoogleFonts.plusJakartaSans(
    fontSize: 52,
    fontWeight: FontWeight.w700,
    color: AppColors2.titleText,
    height: 1.13,
  );

  static TextStyle cardTitle = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
  );

  static TextStyle cardDescription = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle getTitleForWidth(double width) {
    if (width <= 640) {
      return title.copyWith(fontSize: 23, height: 1.25);
    } else if (width <= 991) {
      return title.copyWith(fontSize: 32, height: 1.14);
    } else {
      return title.copyWith(fontSize: 35, height: 1.14);
    }
    return title;
  }

  static TextStyle headerNavigation = GoogleFonts.inter(
    // fontFamily: interFont,
    fontSize: 16,
    color: AppColors.text,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static TextStyle heroTitle = TextStyle(
    fontFamily: interFont,
    color: AppColors.text,
    fontWeight: FontWeight.w700,
    height: 1.25,
  );

  static TextStyle sectionTitle = GoogleFonts.inter(
    // fontFamily: interFont,
    fontSize: 40,
    color: AppColors.text,
    fontWeight: FontWeight.w600,
    height: 1,
  );

  static TextStyle bodyText = GoogleFonts.openSans(
    // fontFamily: openSansFont,
    fontSize: 16,
    color: AppColors.secondaryText,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static TextStyle footerText = TextStyle(
    fontFamily: robotoFont,
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeight.w500,
    height: 1.69,
  );
}
