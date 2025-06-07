import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth <= 991;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: isTablet ? 20 : 40),
            width: double.infinity,
            constraints: BoxConstraints(
              maxWidth: isTablet ? double.infinity : 1280,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Tagline
                SizedBox(
                  height: 40,
                ),
                Container(
                  // width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFD02F),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'OUR IDEA STARTS HERE',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Color(0xFF222222),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                // Title
                Padding(
                  padding: EdgeInsets.only(
                      top: 10,
                      // left: isTablet ? 20 : 40,
                      // right: isTablet ? 20 : 40,
                      bottom: 20),
                  child: Text(
                    'Join the Agrivoltaics Community\nCultivating Knowledge and Collaboration',
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF0F172A),
                      fontSize: isTablet ? 25 : 40,
                      fontWeight: FontWeight.w800,
                      height: 1.3,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                // Description
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    // left: isTablet ? 20 : 40,
                    // right: isTablet ? 20 : 40,
                  ),
                  child: Text(
                    'Welcome to the Agrivoltaic Community! This is a vibrant space where enthusiasts, farmers, researchers, and advocates come together to explore the innovative intersection of agriculture and solar energy.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sora(
                      color: const Color(0xFF666666),
                      fontSize: isTablet ? 13 : 16,
                      fontWeight: FontWeight.w400,
                      height: 33 / 21,
                    ),
                  ),
                ),

                // Benefits Grid
              ],
            ),
          ),
        ],
      ),
    );
  }

  double _getCardWidth(double screenWidth) {
    if (screenWidth <= 640) {
      return screenWidth - 48; // Full width minus padding
    } else if (screenWidth <= 991) {
      return (screenWidth - 80) / 2; // Half width minus spacing
    }
    return screenWidth / 4.8; // Default card width
  }
}
