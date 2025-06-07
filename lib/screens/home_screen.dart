import 'dart:ui' as ui;

import 'package:agri_voltics/screens/home_screen_component_2.dart';
import 'package:agri_voltics/screens/home_screen_component_3.dart';
import 'package:agri_voltics/screens/home_screen_component_4.dart';
import 'package:agri_voltics/widgets/Navbar.dart';
import 'package:agri_voltics/widgets/faq_sections.dart';
import 'package:agri_voltics/widgets/mainbanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/styles.dart';
import '../widgets/header_widget.dart';
import '../widgets/content_section_widget.dart';
import '../widgets/footer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth <= 800;
      bool isMobileText = constraints.maxWidth <= 768;

      return Scaffold(
        drawer: isMobile ? MyDrawer() : null,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              Container(
                color: AppColors.background,
                child: Column(
                  children: [
                    // Image.network(
                    //   'https://cdn.builder.io/api/v1/image/assets/TEMP/a088d772672812248d9b2098385dbb4cdf69eaa8?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                    //   width: double.infinity,
                    //   fit: BoxFit.contain,
                    // ),
                    Mainbanner(
                        imageUrl:
                            'https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/About+us/about_us.png',
                        // 'https://cdn.builder.io/api/v1/image/assets/TEMP/a088d772672812248d9b2098385dbb4cdf69eaa8?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                        name: 'About Us'),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 20 : 60,
                        vertical: isMobile ? 30 : 60,
                      ),
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 1280),
                        child: Stack(
                          children: [
                            // Positioned.fill(
                            //   child: Align(
                            //     alignment: Alignment.centerRight,
                            //     child: Image.asset(
                            //       'icons/hand1.png',
                            //       width:
                            //           MediaQuery.of(context).size.width * 0.33,
                            //       color: Colors.black,
                            //       // responsive size
                            //       // color: Colors.black.withOpacity(0.1), // light faded effect
                            //       fit: BoxFit.contain,
                            //       // placeholderBuilder: (context) => Container(
                            //       //   color: Colors.red,
                            //       //   width: 100,
                            //       //   height: 100,
                            //       // ),
                            //     ),
                            //   ),
                            // ),
                            RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                children: [
                                  // Spark at start
                                  WidgetSpan(
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          top: -10,
                                          right:
                                              -10, // push it higher above text
                                          child: SvgPicture.asset(
                                            'assets/icons/lefttexticon.svg',
                                            width: isMobile ? 20 : 40,
                                            // height: 30,
                                            color: Colors.green[700],
                                          ),
                                        ),
                                        // Invisible char to hold space for spark
                                        SizedBox(
                                            width: 0,
                                            height:
                                                FontSizes.scale(context, 70) -
                                                    0),
                                      ],
                                    ),
                                  ),
                                  const WidgetSpan(child: SizedBox(width: 8)),

                                  TextSpan(
                                    text:
                                        'Agrivoltaics- Solar Power Growing Energy and Food Together',
                                    style: GoogleFonts.inter(
                                      // fontFamily: 'Inter',
                                      color: AppColors.text,
                                      fontWeight: FontWeight.w700,
                                      fontSize: FontSizes.scale(context, 70),
                                      height: 1.08,
                                    ),
                                    // textAlign: TextAlign.center,
                                  ),

                                  const WidgetSpan(child: SizedBox(width: 8)),

                                  // Spark at end
                                  WidgetSpan(
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          top: 0 *
                                              1, // push it higher above text
                                          child: SvgPicture.asset(
                                            'assets/icons/righttexticon.svg',
                                            width: isMobile ? 20 : 40,
                                            // height: 30,
                                            color: Colors.green[700],
                                          ),
                                        ),
                                        // Invisible char to hold space for spark
                                        SizedBox(
                                            width: 20,
                                            height:
                                                FontSizes.scale(context, 70) -
                                                    (isMobile ? 5 : 20)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ContentSectionWidget(
                      title: 'Importance of Agrivoltaics',
                      description:
                          'Agrivoltaics plays a crucial role in maximizing land efficiency by enabling the simultaneous production of solar energy and agricultural crops. This dual-use approach supports sustainable energy generation while protecting crops from extreme weather conditions, improving yield, and reducing water evaporation. Farmers benefit economically by generating income from both agricultural products and solar power, promoting financial stability.\n\nAdditionally, agrivoltaics contributes to environmental conservation by enhancing soil health, conserving water, and supporting biodiversity.\n\nIt also strengthens community resilience by fostering local food and energy production, reducing dependence on external resources, and promoting a greener, more sustainable future.',
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/32cfc6ff71bc171f6a4e501026f7c4fe7db39cbf?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                    ),
                    SizedBox(height: isMobile ? 25 : 80),
                    CollaborativeVenturesSection(),
                    SizedBox(
                      height: isMobile ? 10 : 40,
                    ),
                    SectionContainer(),
                    SectionContainer2(),
                    FAQSection(),
                    const FooterWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildGreenSection() {
    return Container(
      color: AppColors.primary,
      padding: const EdgeInsets.symmetric(
        horizontal: 84,
        vertical: 43,
      ),
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 1280),
            child: Column(
              children: [
                Text(
                  'Collaborative Ventures for a Sustainable Future',
                  style: AppTextStyles.sectionTitle.copyWith(
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  'This initiative emphasizes the importance of strategic partnerships that drive innovation and sustainability. By fostering joint ventures, we leverage collective expertise and resources to restore and protect the land while boosting local economies. Our commitment to sustainable practices ensures that our efforts contribute to a healthier environment and a thriving community for generations to come.',
                  style: AppTextStyles.bodyText.copyWith(
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 42),
          // Add the rest of the green section content here
        ],
      ),
    );
  }

  Widget _buildDualUseSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            'Dual-Use Strategies: Enhancing Sustainability Through Agrivoltaics',
            style: AppTextStyles.sectionTitle,
          ),
          const SizedBox(height: 78),
          // Add the list of strategies here
        ],
      ),
    );
  }

  Widget _buildFaqSection() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/e864c247a20164345aa37471b7b7eb386c544919?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
            width: 386,
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Frequently\nasked Questions',
                  style: TextStyle(
                    fontSize: 66,
                    fontWeight: FontWeight.w500,
                    height: 1.09,
                  ),
                ),
                const SizedBox(height: 35),
                Text(
                  'Curious about us or our solar farms? Click here to discover answers to common questions about our solar projects, along with facts, videos, and more insights!',
                  style: AppTextStyles.bodyText,
                ),
                const SizedBox(height: 35),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(368),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 19,
                    ),
                  ),
                  child: Text(
                    'Get started',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/256ca28d4c0c16b291cb40699e3b4d1748a182ec?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
            width: 387,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
