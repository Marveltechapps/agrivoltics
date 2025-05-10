import 'package:agri_voltics/screens/integratedfarm/requirementscard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'benefit_card.dart';

class SheepFarming extends StatelessWidget {
  const SheepFarming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth <= 991;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            constraints: BoxConstraints(
              maxWidth: isTablet ? double.infinity : 1538,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Tagline
                Container(
                  // width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFD02F),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Text(
                    'Powering Farms, Grazing Green.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Color(0xFF222222),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                // Title
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    'Sheep Farming',
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF0F172A),
                      fontSize: isTablet ? 30 : 40,
                      fontWeight: FontWeight.w700,
                      height: 1,
                    ),
                  ),
                ),

                // Description
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 40, right: 40),
                  child: Text(
                    'Sheep farming is a common practice in agrivoltaics, which is the practice of using land for both agriculture and solar power generation. Sheep are a good choice for agrivoltaics because they can easily maneuver around and under solar panels, and they can eat many types of weeds and invasive plants.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sora(
                      color: const Color(0xFF666666),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 33 / 21,
                    ),
                  ),
                ),

                // Main Image
                Padding(
                  padding: const EdgeInsets.only(top: 36, left: 40, right: 40),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/f3bb757741d789938f64b934622092a62cfcc9f2?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                // Benefits Grid
                Padding(
                  padding: EdgeInsets.only(
                    top: isTablet ? 40 : 61,
                  ),
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: [
                      SizedBox(
                        width: _getCardWidth(screenWidth),
                        child: RequirementCard(
                          svgIcon:
                              'https://cdn.builder.io/api/v1/image/assets/TEMP/cd4eb0b809de1d1270ac45dc0c73e4d42a0a5d94?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                          title: 'Benefits for farmers',
                          description:
                              'Sheep farming can provide an additional revenue stream for farmers. This can help farmers maintain or expand their operations, especially in times of economic stress.',
                          isOutlined: true,
                        ),
                      ),
                      SizedBox(
                        width: _getCardWidth(screenWidth),
                        child: RequirementCard(
                          svgIcon:
                              'https://cdn.builder.io/api/v1/image/assets/TEMP/1b2429cc7002f22f96fdea5cff0e2f99caa0422d?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                          title: 'Benefits for solar companies',
                          description:
                              'Solar companies can save money on maintenance costs by using sheep instead of mowing the grass between panels.',
                        ),
                      ),
                      SizedBox(
                        width: _getCardWidth(screenWidth),
                        child: RequirementCard(
                          svgIcon:
                              'https://cdn.builder.io/api/v1/image/assets/TEMP/d3736f1b4f565ae127655bc344b3890b83174e1c?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                          title: 'Benefits for the environment',
                          description:
                              'Agrivoltaics can reduce the environmental impacts of producing food and electricity. For example, sheep grazing can help sequester carbon and improve soil quality.',
                        ),
                      ),
                      SizedBox(
                        width: _getCardWidth(screenWidth),
                        child: RequirementCard(
                          svgIcon:
                              'https://cdn.builder.io/api/v1/image/assets/TEMP/eb8ae4e02d29d4b0dfe965b84385647c1778899a?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                          title: 'Benefits for the landscape',
                          description:
                              'Sheep grazing can help maintain vegetation under and around solar panels',
                        ),
                      ),
                    ],
                  ),
                ),
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
