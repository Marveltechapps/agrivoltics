import 'package:agri_voltics/constants/text_styles.dart';
import 'package:agri_voltics/screens/home_screen_component_2.dart';
import 'package:agri_voltics/screens/home_screen_component_3.dart';
import 'package:agri_voltics/screens/home_screen_component_4.dart';
import 'package:agri_voltics/screens/landscreen/impactsection.dart';
import 'package:agri_voltics/screens/landscreen/inputdesign.dart';
import 'package:agri_voltics/screens/landscreen/landscreenbanner.dart';
import 'package:agri_voltics/screens/landscreen/partnerworksection.dart';
import 'package:agri_voltics/screens/landscreen/section5.dart';
import 'package:agri_voltics/theme/styles.dart' as p;
import 'package:agri_voltics/widgets/Navbar.dart';
import 'package:agri_voltics/widgets/faq_sections.dart';
import 'package:agri_voltics/widgets/mainbanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/header_widget.dart';
import '../widgets/content_section_widget.dart';
import '../widgets/footer_widget.dart';

class LandPartnership extends StatelessWidget {
  const LandPartnership({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 991;
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth <= 800;
      return Scaffold(
        backgroundColor: Color(0xfff3f8f2),
        drawer: isMobile ? MyDrawer() : null,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              // LandPartnershipBanner(),
              Mainbanner(
                  imageUrl:
                      'https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Land+partnership/Land+partnership.png',
                  name: 'Land Partnership'),
              InputDesign(),
              ImpactSection(),
              PartnerWorksSection(),
              Section5(),
              SizedBox(
                height: 20,
              ),
              // Container(
              //   constraints: const BoxConstraints(
              //     maxWidth: 1103,
              //   ),
              //   padding: EdgeInsets.symmetric(
              //       vertical: 10,
              //       horizontal: isDesktop
              //           ? MediaQuery.of(context).size.width * 0.05
              //           : 20),
              //   child: Text(
              //     "The Future of Land Use-\nsolar power and\nIntegrated farming ",
              //     style: isDesktop
              //         ? AppTextStyles.titleStyle
              //         : AppTextStyles.titleStyleMobile,
              //     textAlign: TextAlign.left,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20 : 60,
                  vertical: isMobile ? 10 : 20,
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 1280),
                  child: Stack(
                    children: [
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
                                    right: -10, // push it higher above text
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
                                          p.FontSizes.scale(context, 70) - 0),
                                ],
                              ),
                            ),
                            const WidgetSpan(child: SizedBox(width: 8)),

                            TextSpan(
                              text:
                                  'The Future of Land Use-\nsolar power and\nIntegrated farming',
                              style: isDesktop
                                  ? AppTextStyles.titleStyle
                                  : AppTextStyles.titleStyleMobile,

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
                                    top: 0 * 1, // push it higher above text
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
                                      height: p.FontSizes.scale(context, 70) -
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
              SizedBox(
                height: 30,
              ),
              FooterWidget()
            ],
          ),
        ),
      );
    });
  }
}
