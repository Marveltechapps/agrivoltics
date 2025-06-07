import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyStyles {
   static const Color primaryTextColor = Color(0xFF29436D);

   static final TextStyle mainTitle = GoogleFonts.openSans(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: primaryTextColor,
    height: 1,
    
  );

   static final TextStyle sectionTitle = GoogleFonts.openSans(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: primaryTextColor,
    height: 1,
    
  );

   static final TextStyle dateText = GoogleFonts.openSans(
    fontSize: 19,
    fontWeight: FontWeight.w400,
    color: primaryTextColor,
    height: 1.4,
    
  );

   static final TextStyle bodyText = GoogleFonts.openSans(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: primaryTextColor,
    height: 1.6,
    
  );

  // Responsive breakpoints
   static const double tabletBreakpoint = 991;

  // Padding constants
   static const double defaultPadding = 20.0;
   static const double sectionSpacing = 26.0;
   static const double contentLeftPadding = 40.0;
   static const double contentRightPadding = 20.0;
}
