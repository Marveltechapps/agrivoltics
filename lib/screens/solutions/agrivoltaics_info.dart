import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_section.dart';

class AgrivoltaicsInfo extends StatelessWidget {
  const AgrivoltaicsInfo({Key? key}) : super(key: key);

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
                            'Agrivoltaics – Powering the Future with Energy and Food',
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
                            title: 'Power',
                            description:
                                'With our advanced agrivoltaic installations, we offer homes, industries, and enterprises access to clean and renewable energy. Solar panels mounted above agricultural fields or rooftops provide reliable energy without compromising land for farming. Our solution reduces dependency on fossil fuels, slashes electricity costs, and enhances energy independence.',
                            benefits: [
                              'Reduced energy bills with sustainable power',
                              'Solar energy solutions for homes, industries, and large enterprises',
                              'Long-term savings and protection from rising energy prices',
                            ],
                          ),
                          SizedBox(height: isTablet ? 20 : 20),
                          DetailSection(
                            imageSrc:
                                'https://cdn.builder.io/api/v1/image/assets/TEMP/5e23e0f62f6c167899725b9736703bedc3295e87?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                            title: 'Food',
                            description:
                                'Agrivoltaics supports farming beneath solar panels, creating a microclimate that enhances crop growth. With better water retention and reduced soil erosion, this approach ensures healthy yields even under challenging weather conditions. Our focus on sustainable farming guarantees food security while conserving resources.',
                            benefits: [
                              'Higher crop yields through sustainable practices',
                              'Efficient land use combining food and energy production',
                              'Support for local farmers and agricultural communities',
                            ],
                          ),
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
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/a619a83cee382d6565c604fd50755a4dd1d26bc1?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
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
                            'Agrivoltaics – Powering the Future with Energy and Food',
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
                            title: 'Power',
                            description:
                                'With our advanced agrivoltaic installations, we offer homes, industries, and enterprises access to clean and renewable energy. Solar panels mounted above agricultural fields or rooftops provide reliable energy without compromising land for farming. Our solution reduces dependency on fossil fuels, slashes electricity costs, and enhances energy independence.',
                            benefits: [
                              'Reduced energy bills with sustainable power',
                              'Solar energy solutions for homes, industries, and large enterprises',
                              'Long-term savings and protection from rising energy prices',
                            ],
                          ),
                          SizedBox(height: isTablet ? 40 : 48),
                          DetailSection(
                            imageSrc:
                                'https://cdn.builder.io/api/v1/image/assets/TEMP/5e23e0f62f6c167899725b9736703bedc3295e87?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                            title: 'Food',
                            description:
                                'Agrivoltaics supports farming beneath solar panels, creating a microclimate that enhances crop growth. With better water retention and reduced soil erosion, this approach ensures healthy yields even under challenging weather conditions. Our focus on sustainable farming guarantees food security while conserving resources.',
                            benefits: [
                              'Higher crop yields through sustainable practices',
                              'Efficient land use combining food and energy production',
                              'Support for local farmers and agricultural communities',
                            ],
                          ),
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
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/a619a83cee382d6565c604fd50755a4dd1d26bc1?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
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
