import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_section.dart';

class CarbonCredits extends StatelessWidget {
  const CarbonCredits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth <= 991;

    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        constraints: const BoxConstraints(
          minWidth: 240,
          maxWidth: 1280,
        ),
        child: !isTablet
            ? Wrap(
                spacing: 20,
                runSpacing: 40,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.3,
                    constraints: const BoxConstraints(
                      minWidth: 360,
                    ),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Carbon Credits – A Pathway to Environmental Impact and Profitability',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: isTablet ? 40 : 30,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF0F172A),
                              height: isTablet ? 1.25 : 1.13,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Agrivoltaics offers a cutting-edge solution that merges agriculture and solar energy production, transforming land use for maximum efficiency. This dual-purpose approach allows you to generate renewable power while growing crops, ensuring sustainable benefits for both energy and food supply chains.',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF12141D),
                              height: 1.6,
                            ),
                          ),
                          SizedBox(height: isTablet ? 20 : 20),
                          DetailSection(
                            imageSrc:
                                'https://cdn.builder.io/api/v1/image/assets/TEMP/63c4f093a1b2b85698b9c096b95e591516a00a0e?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                            title: 'Carbon',
                            description:
                                'We enable businesses, landowners, and individuals to earn carbon credits by adopting sustainable practices through agrivoltaic installations. Carbon credits represent a measurable reduction of CO₂ emissions, which can be traded in global markets, allowing you to offset emissions and contribute to climate goals.By integrating solar energy and sustainable farming, we help reduce carbon footprints while creating an opportunity for businesses to generate additional revenue. Organizations can purchase these credits to meet environmental regulations or corporate sustainability goals, turning climate responsibility into financial benefit.',
                            benefits: [
                              'Earn tradable carbon credits for adopting eco-friendly practices',
                              'Generate new revenue streams by selling credits on carbon markets',
                              'Align your operations with global sustainability standards',
                              'Strengthen your brand with green initiatives that appeal to customers'
                            ],
                          ),
                          SizedBox(height: isTablet ? 20 : 20),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.3,
                    constraints: BoxConstraints(
                      minWidth: 360,
                      maxWidth: isTablet ? double.infinity : 600,
                      minHeight: 569,
                    ),
                    child: Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/6ec90b063feac8c2f0ee4e138f67c67d0d695bcb?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  spacing: 0,
                  // runSpacing: 40,
                  // alignment: WrapAlignment.center,
                  children: [
                    Container(
                      constraints: const BoxConstraints(
                          // minWidth: 360,
                          ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Carbon Credits – A Pathway to Environmental Impact and Profitability',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: isTablet ? 40 : 30,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF0F172A),
                              height: isTablet ? 1.25 : 1.13,
                            ),
                          ),
                          const SizedBox(height: 39),
                          Text(
                            'Agrivoltaics offers a cutting-edge solution that merges agriculture and solar energy production, transforming land use for maximum efficiency. This dual-purpose approach allows you to generate renewable power while growing crops, ensuring sustainable benefits for both energy and food supply chains.',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF12141D),
                              height: 1.6,
                            ),
                          ),
                          SizedBox(height: isTablet ? 40 : 60),
                          DetailSection(
                            imageSrc:
                                'https://cdn.builder.io/api/v1/image/assets/TEMP/63c4f093a1b2b85698b9c096b95e591516a00a0e?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                            title: 'Carbon',
                            description:
                                'We enable businesses, landowners, and individuals to earn carbon credits by adopting sustainable practices through agrivoltaic installations. Carbon credits represent a measurable reduction of CO₂ emissions, which can be traded in global markets, allowing you to offset emissions and contribute to climate goals.By integrating solar energy and sustainable farming, we help reduce carbon footprints while creating an opportunity for businesses to generate additional revenue. Organizations can purchase these credits to meet environmental regulations or corporate sustainability goals, turning climate responsibility into financial benefit.',
                            benefits: [
                              'Earn tradable carbon credits for adopting eco-friendly practices',
                              'Generate new revenue streams by selling credits on carbon markets',
                              'Align your operations with global sustainability standards',
                              'Strengthen your brand with green initiatives that appeal to customers'
                            ],
                          ),
                          SizedBox(height: isTablet ? 40 : 48),
                        ],
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        minWidth: 360,
                        maxWidth: isTablet ? double.infinity : 600,
                        minHeight: 569,
                      ),
                      child: Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/6ec90b063feac8c2f0ee4e138f67c67d0d695bcb?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
