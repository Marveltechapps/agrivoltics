import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static const String fontFamily = 'Inter';

  static TextStyle faqTitle = GoogleFonts.inter(
    fontSize: 40,
    fontWeight: FontWeight.w500,
    height: 72 / 66, // lineHeight equivalent

    color: Colors.black,
  );

  static TextStyle faqTitleMobile = GoogleFonts.inter(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    height: 49 / 40,
    color: Colors.black,
  );

  static TextStyle faqDescription = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    height: 36 / 20,
    color: Colors.black,
  );

  static TextStyle buttonText = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle partnerWorksTag = GoogleFonts.inter(
      fontSize: 12,
      color: Color(0xFF222222),
      fontWeight: FontWeight.w700,
      height: 1.75);

  static TextStyle mainHeading = GoogleFonts.plusJakartaSans(
    fontSize: 35,
    color: Color(0xFF0F172A),
    fontWeight: FontWeight.w700,
    height: 1.13, // line-height: 59px / font-size: 52px
  );

  static TextStyle mainHeadingMobile = GoogleFonts.plusJakartaSans(
    fontSize: 30,
    color: Color(0xFF0F172A),
    fontWeight: FontWeight.w700,
    height: 1.25, // line-height: 50px / font-size: 40px
  );

  static TextStyle bodyText = GoogleFonts.inter(
    fontSize: 14,
    color: Color(0xFF12141D).withOpacity(0.7),
    fontWeight: FontWeight.w400,
    height: 1.2, // line-height: 32px / font-size: 20px
  );

  static TextStyle featureText = GoogleFonts.plusJakartaSans(
    fontSize: 15,
    color: Color(0xFF0F172A),
    fontWeight: FontWeight.w700,
    height: 1.36, // line-height: 30px / font-size: 22px
  );

  static TextStyle titleStyle = GoogleFonts.inter(
    fontSize: 80,
    color: Color(0xFF222222),
    fontWeight: FontWeight.w700,
    letterSpacing: -1.52,
    height: 1.17, // 84/72
  );

  static TextStyle titleStyleMobile = GoogleFonts.inter(
    fontSize: 42,
    color: Color(0xFF222222),
    fontWeight: FontWeight.w700,
    letterSpacing: -1.52,
    height: 1.1, // 52/40
  );

  static TextStyle descriptionStyle = GoogleFonts.inter(
    fontSize: 16,
    color: Color(0xFF444444),
    fontWeight: FontWeight.w400,
    height: 1.25, // 38/24
  );

  static const double maxContentWidth = 1280;
  static const double maxImageWidth = 1728;
  static const double defaultPadding = 16;
  static double contentPadding = 10;
}
