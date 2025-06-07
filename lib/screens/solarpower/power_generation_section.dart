import 'package:agri_voltics/screens/solarpower/check_circle.dart';
import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PowerGenerationSection extends StatelessWidget {
  const PowerGenerationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 991;
        final isTablet =
            constraints.maxWidth > 640 && constraints.maxWidth <= 991;
        final isMobile = constraints.maxWidth <= 640;

        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: isDesktop ? 60 : 0, vertical: isMobile ? 10 : 30),
          child: Center(
            child: Container(
              // constraints: const BoxConstraints(maxWidth: 1525),
              child: isDesktop
                  ? Wrap(
                      spacing: isDesktop ? 20 : (isTablet ? 32 : 24),
                      runSpacing: isDesktop ? 40 : (isTablet ? 32 : 24),
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        _buildContentSection(context, isMobile, isTablet),
                        _buildImage(context, isMobile, isTablet),
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        spacing: isDesktop ? 20 : (isTablet ? 32 : 24),
                        // runSpacing: isDesktop ? 40 : (isTablet ? 32 : 24),
                        // alignment: WrapAlignment.center,
                        children: [
                          _buildContentSection(context, isMobile, isTablet),
                          _buildImage(context, isMobile, isTablet),
                        ],
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildContentSection(
      BuildContext context, bool isMobile, bool isTablet) {
    return Container(
      constraints: BoxConstraints(
        minWidth: isMobile ? 280 : (isTablet ? 300 : 360),
        maxWidth: isTablet || isMobile
            ? MediaQuery.of(context).size.width
            : MediaQuery.of(context).size.width > 1280
                ? 1280 / 2.4
                : MediaQuery.of(context).size.width / 2.4,
      ),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14.085,
                  vertical: 7.512,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFD02F),
                  borderRadius: BorderRadius.circular(9.812),
                ),
                child: Text(
                  'What We Do with Power Generation',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF222222),
                  ),
                ),
              ),
              const SizedBox(height: 19.775),
              Text(
                'We supply power to community, corporates and Farming',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: isMobile ? 26 : (isTablet ? 30 : 32),
                  fontWeight: FontWeight.w700,
                  height: isMobile ? 1.25 : (isTablet ? 1.14 : 1.13),
                  color: const Color(0xFF0F172A),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          _buildFeaturesList(),
        ],
      ),
    );
  }

  Widget _buildFeaturesList() {
    final features = [
      {
        'title': 'Power Farming Operations',
        'description':
            '- Use solar energy to run irrigation pumps and farm equipment.',
      },
      {
        'title': 'Supply Homes & Businesses',
        'description': '- Provide reliable, clean power to the community.',
      },
      {
        'title': 'Store Energy',
        'description':
            '- Save excess energy in batteries to ensure uninterrupted power.',
      },
      {
        'title': 'Sell power to the Grid',
        'description': '- Earn revenue by exporting power to the grid.',
      },
      {
        'title': 'Support Rural Communities',
        'description':
            '- Bring electricity to remote areas and boost agricultural productivity.',
      },
    ];

    return Column(
      children: features
          .map((feature) => _buildFeatureItem(
                title: feature['title']!,
                description: feature['description']!,
              ))
          .toList(),
    );
  }

  Widget _buildFeatureItem(
      {required String title, required String description}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xFF777777)),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CheckCircleIcon(),
          const SizedBox(width: 10),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: GoogleFonts.inter(
                  fontSize: 14,
                  height: 1.5,
                  color: const Color(0xFF333333),
                ),
                children: [
                  TextSpan(
                    text: title,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(text: description),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage(BuildContext context, bool isMobile, bool isTablet) {
    return Container(
      constraints: BoxConstraints(
          minWidth: isMobile ? 280 : (isTablet ? 340 : 380),
          minHeight: 333.658,
          maxWidth: 1280),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.719),
        child: NetworkImageWidget(
          "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Solar+power/We+supply+power+to+community%2C+corporates+and+Farming.png",
          fit: BoxFit.cover,
          width: isMobile || isTablet
              ? MediaQuery.of(context).size.width / 1
              : MediaQuery.of(context).size.width > 1280
                  ? 1280 / 2.3
                  : MediaQuery.of(context).size.width / 2.3,
        ),
      ),
    );
  }
}
