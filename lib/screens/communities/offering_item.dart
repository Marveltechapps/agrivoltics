import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OfferingItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const OfferingItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            imageUrl,
            width: 40,
            height: 40,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 30),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF0F172A),
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                      text: '$title: ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  TextSpan(
                    text: description,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
