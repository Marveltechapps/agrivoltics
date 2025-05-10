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
    return Container(
      constraints: const BoxConstraints(
        minWidth: 240,
      ),
      width: MediaQuery.of(context).size.width > 729
          ? MediaQuery.of(context).size.width / 2.5
          : double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width > 991 ? 32 : 20,
        vertical: 31,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              color: Color(0xFF222222),
              fontSize: 30,
              fontWeight: FontWeight.w700,
              height: 1,
              letterSpacing: -0.67,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 39),
          Text(
            description,
            style: GoogleFonts.inter(
              color: Color(0xFF444444),
              fontSize: 17.5,
              fontWeight: FontWeight.w400,
              height: 1.2,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
