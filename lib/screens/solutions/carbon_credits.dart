import 'package:agri_voltics/widgets/network_image_widget.dart';
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
                    width: MediaQuery.of(context).size.width > 1280
                        ? 1280 / 2.3
                        : MediaQuery.of(context).size.width / 2.3,
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
                                '''<svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
<circle cx="28.0002" cy="27.8088" r="27.8088" fill="#008EFF"/>
<path d="M22.4386 19.7758V16.068C22.4386 15.3854 22.992 14.832 23.6746 14.832H38.5059C39.1885 14.832 39.7419 15.3854 39.7419 16.068V33.3712C39.7419 34.0538 39.1885 34.6071 38.5059 34.6071H34.7981V38.3139C34.7981 38.9971 34.242 39.5509 33.5537 39.5509H18.7393C18.052 39.5509 17.4951 39.0014 17.4951 38.3139L17.4983 21.0128C17.4985 20.3297 18.0546 19.7758 18.7427 19.7758H22.4386ZM19.97 22.2477L19.9672 37.079H32.3262V22.2477H19.97ZM24.9105 19.7758H34.7981V32.1353H37.27V17.3039H24.9105V19.7758ZM22.4389 25.9555H29.8546V28.4274H22.4389V25.9555ZM22.4389 30.8993H29.8546V33.3712H22.4389V30.8993Z" fill="white"/>
</svg>
''',
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
                    child: NetworkImageWidget(
                      'https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Solutions/carbon+credits+-+a+pathway+to+environmental+impact+and+profitability.png',
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
                              fontSize: isTablet ? 26 : 30,
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
                                '''<svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
<circle cx="28.0002" cy="27.8088" r="27.8088" fill="#008EFF"/>
<path d="M22.4386 19.7758V16.068C22.4386 15.3854 22.992 14.832 23.6746 14.832H38.5059C39.1885 14.832 39.7419 15.3854 39.7419 16.068V33.3712C39.7419 34.0538 39.1885 34.6071 38.5059 34.6071H34.7981V38.3139C34.7981 38.9971 34.242 39.5509 33.5537 39.5509H18.7393C18.052 39.5509 17.4951 39.0014 17.4951 38.3139L17.4983 21.0128C17.4985 20.3297 18.0546 19.7758 18.7427 19.7758H22.4386ZM19.97 22.2477L19.9672 37.079H32.3262V22.2477H19.97ZM24.9105 19.7758H34.7981V32.1353H37.27V17.3039H24.9105V19.7758ZM22.4389 25.9555H29.8546V28.4274H22.4389V25.9555ZM22.4389 30.8993H29.8546V33.3712H22.4389V30.8993Z" fill="white"/>
</svg>
''',
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
                        // minHeight: 569,
                      ),
                      child: NetworkImageWidget(
                        'https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Solutions/carbon+credits+-+a+pathway+to+environmental+impact+and+profitability.png',
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
