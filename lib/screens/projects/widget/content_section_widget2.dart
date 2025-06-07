import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../theme/styles.dart';
import '../utils/theme_constant.dart';

class ContentSectionWidget2 extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final bool imageLeft;

  const ContentSectionWidget2({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.imageLeft = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 991;
    // inal isDesktop = constraints.maxWidth > 991;
    final isMobile = MediaQuery.of(context).size.width <= 640;
    final content = [
      Expanded(
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: NetworkImageWidget(
            imageUrl,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      const SizedBox(width: 40),
      Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                  // fontFamily: 'Inter',
                  fontSize: FontSizes.scale(context, 32),
                  color: AppColors.text,
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
              const SizedBox(height: 10),
              // Row(
              //   spacing: 10,
              //   children: [
              //     NetworkImageWidget(
              //       "icons/locationgreen.png",
              //       width: 50,
              //     ),
              //     Expanded(
              //       child: Text('Panavayal, Sivagangai, Tamil Nadu.',
              //           style: GoogleFonts.poppins(
              //               fontSize: FontSizes.scale(context, 18),
              //               fontWeight: FontWeight.w500),
              //           maxLines: 2),
              //     )
              //   ],
              // ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.inter(
                    fontSize: isMobile
                        ? 14
                        : isDesktop
                            ? 16
                            : 15,
                    height: isMobile ? 1.2 : 1.4,
                    color: ThemeConstants.textPrimary,
                  ),
                  children: [
                    TextSpan(
                      text: 'Dual Land Use: ',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text:
                          'Agrivoltaics technology enables simultaneous solar power generation and agricultural cultivation on the same land, maximizing productivity and income.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: ThemeConstants.textSecondary,
                      ),
                    ),
                    TextSpan(text: '\n\n'),
                    TextSpan(
                      text: 'Government Support: ',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text:
                          'The Ministry of New and Renewable Energy (MNRE) and the Ministry of Agriculture & Farmers Welfare (MoA&FW) are actively promoting schemes like PM-KUSUM and PM Surya Ghar: Muft Bijli Yojana to support clean energy in agriculture and enabling farmer to sell DISCOMs.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: ThemeConstants.textSecondary,
                      ),
                    ),
                    TextSpan(text: '\n\n'),
                    TextSpan(
                      text: 'Farmer Empowerment: ',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text:
                          'These initiatives aim to enhance energy access for farmers, ensuring both food and energy security, and improving rural livelihoods.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: ThemeConstants.textSecondary,
                      ),
                    ),
                    TextSpan(text: '\n\n'),
                    TextSpan(
                      text: 'Community Engagement: ',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text:
                          'Field visits and interactions with local farmers provide valuable insights into the transformative impact of solar energy on rural communities.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: ThemeConstants.textSecondary,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width < 800 ? 20 : 60,
          vertical: 60),
      child: Container(
        height: isDesktop ? 500 : null,
        constraints: BoxConstraints(maxWidth: 1280),
        child: isDesktop
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: imageLeft ? content : content.reversed.toList(),
              )
            : Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1 / 1,
                    child: NetworkImageWidget(
                      imageUrl,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    title,
                    style: AppTextStyles.sectionTitle.copyWith(fontSize: 30),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.inter(
                        fontSize: isMobile
                            ? 14
                            : isDesktop
                                ? 16
                                : 15,
                        height: isMobile ? 1.2 : 1.4,
                        color: ThemeConstants.textPrimary,
                      ),
                      children: [
                        TextSpan(
                          text: 'Dual Land Use: ',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text:
                              'Agrivoltaics technology enables simultaneous solar power generation and agricultural cultivation on the same land, maximizing productivity and income.',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: ThemeConstants.textSecondary,
                          ),
                        ),
                        TextSpan(text: '\n\n'),
                        TextSpan(
                          text: 'Government Support: ',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text:
                              'The Ministry of New and Renewable Energy (MNRE) and the Ministry of Agriculture & Farmers Welfare (MoA&FW) are actively promoting schemes like PM-KUSUM and PM Surya Ghar: Muft Bijli Yojana to support clean energy in agriculture and enabling farmer to sell DISCOMs.',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: ThemeConstants.textSecondary,
                          ),
                        ),
                        TextSpan(text: '\n\n'),
                        TextSpan(
                          text: 'Farmer Empowerment: ',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text:
                              'These initiatives aim to enhance energy access for farmers, ensuring both food and energy security, and improving rural livelihoods.',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: ThemeConstants.textSecondary,
                          ),
                        ),
                        TextSpan(text: '\n\n'),
                        TextSpan(
                          text: 'Community Engagement: ',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text:
                              'Field visits and interactions with local farmers provide valuable insights into the transformative impact of solar energy on rural communities.',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: ThemeConstants.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
