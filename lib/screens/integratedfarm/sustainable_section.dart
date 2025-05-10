import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'content_block.dart';

class SustainableSection extends StatelessWidget {
  const SustainableSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width <= 991;

    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color.fromRGBO(123, 149, 64, 1),
      padding: EdgeInsets.symmetric(
        vertical: isSmallScreen ? 40 : 64,
        horizontal: 16,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Innovative Practices for Sustainable Agriculture',
              style: GoogleFonts.inter(
                fontSize: isSmallScreen ? 40 : 64,
                fontWeight: FontWeight.w700,
                letterSpacing: -1.34,
                height: 1.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: isSmallScreen ? 40 : 80),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ContentBlock(
                imageUrl:
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/c74f171ec7d094639a736f9f8f0eb8e2a6212316?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                imageAspectRatio: 1.37,
                title: 'Medicinal Plants',
                description:
                    'We cultivate medicinal plants, providing natural health solutions and supporting wellness through herbs with proven therapeutic benefits.',
              ),
              ContentBlock(
                imageUrl:
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/9763c1af8f3f9b6021c9178a392ff86c3faa1f25?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                imageAspectRatio: 1.22,
                title: 'Organic Farming',
                description:
                    'We grow crops without synthetic chemicals, using natural inputs to ensure healthy, chemical-free produce while promoting biodiversity and soil fertility.',
                borderRadius: 16,
                boxShadow: BoxShadow(
                  offset: const Offset(9, -5),
                  blurRadius: 40,
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
              ContentBlock(
                imageUrl:
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/453a78ddc19eb3523f6a3b98efde88daa802eff1?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                imageAspectRatio: 1.37,
                title: 'Integrated Farming',
                description:
                    'We integrate crops, livestock, and aquaculture, maximizing resource efficiency and minimizing waste, creating a balanced and sustainable farm ecosystem.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
