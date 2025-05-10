import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BenefitCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final bool isOutlined;
  final double minHeight;
  final double bottomPadding;

  const BenefitCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    this.isOutlined = false,
    this.minHeight = 0,
    this.bottomPadding = 17,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356,
      constraints: BoxConstraints(
        minWidth: 240,
        minHeight: minHeight,
      ),
      padding: EdgeInsets.fromLTRB(17, 17, 17, bottomPadding),
      decoration: BoxDecoration(
        color: isOutlined ? Colors.transparent : const Color(0xFF7B9540),
        border: isOutlined
            ? Border.all(
                color: const Color(0xFF7B9540),
                width: 1,
              )
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: 88,
            height: 88,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: GoogleFonts.inter(
              color: isOutlined ? const Color(0xFF7B9540) : Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: GoogleFonts.inter(
              color: isOutlined ? const Color(0xFF7B9540) : Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
