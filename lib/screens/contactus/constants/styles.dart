import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactStyles {
  static TextStyle titleStyle(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width > 991
        ? 30
        : MediaQuery.of(context).size.width > 640
            ? 25
            : 21;

    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF222222),
    );
  }

  static TextStyle contactInfoStyle(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width > 991
        ? 18
        : MediaQuery.of(context).size.width > 640
            ? 16
            : 14;

    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF222222),
    );
  }

  static TextStyle inputStyle(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width > 991
        ? 16
        : MediaQuery.of(context).size.width > 640
            ? 16
            : 14;

    return GoogleFonts.poppins(
      fontSize: fontSize,
      color: const Color(0xFF777777),
    );
  }

  static InputDecoration inputDecoration(String placeholder) {
    return InputDecoration(
      hintText: placeholder,
      hintStyle: const TextStyle(color: Color(0xFF777777)),
      filled: true,
      fillColor: Colors.white,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 34.61, vertical: 17.305),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.326),
        borderSide: const BorderSide(
          color: Color(0xFFD0D2CA),
          width: 2.163,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.326),
        borderSide: const BorderSide(
          color: Color(0xFFD0D2CA),
          width: 2.163,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.326),
        borderSide: const BorderSide(
          color: Color(0xFFD0D2CA),
          width: 2.163,
        ),
      ),
    );
  }
}
