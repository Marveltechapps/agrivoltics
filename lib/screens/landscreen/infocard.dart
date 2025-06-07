import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String description;

  const InfoCard({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 500;
    return Container(
      constraints: const BoxConstraints(
        minWidth: 240,
      ),
      width: MediaQuery.of(context).size.width > 729
          ? MediaQuery.of(context).size.width > 1280
              ? 1280 / 2.5
              : MediaQuery.of(context).size.width / 2.5
          : double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width > 991 ? 0 : 0,
        vertical: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              color: Color(0xFF222222),
              fontSize: isMobile ? 24 : 30,
              fontWeight: FontWeight.w700,
              height: 1,
              letterSpacing: -0.67,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: GoogleFonts.inter(
              color: Color(0xFF444444),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 1.3,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
