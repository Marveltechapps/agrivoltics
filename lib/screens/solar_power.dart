import 'package:agri_voltics/screens/solarpower/clean_energy_section.dart';
import 'package:agri_voltics/screens/solarpower/inputdesign.dart';
import 'package:agri_voltics/screens/solarpower/power_generation_section.dart';
import 'package:agri_voltics/screens/solarpower/solarpowerinfo.dart';
import 'package:agri_voltics/screens/solarpower/solarpowerscreen.dart';
import 'package:agri_voltics/screens/solarpower/solarpowersection1.dart';
import 'package:agri_voltics/theme/styles.dart' as p;
import 'package:agri_voltics/widgets/Navbar.dart';
import 'package:agri_voltics/widgets/mainbanner.dart';
import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/header_widget.dart';
import '../widgets/footer_widget.dart';
import 'package:agri_voltics/constants/text_styles.dart';

class SolarPower extends StatelessWidget {
  const SolarPower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 991;
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth <= 800;
      return Scaffold(
        drawer: isMobile ? MyDrawer() : null,
        backgroundColor: Color(0xfff3f8f2),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              // Solarpowerscreen(),
              Mainbanner(
                  imageUrl:
                      "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Solar+power/Solar+power.png",
                  name: 'Solar Power'),
              SizedBox(
                height: 40,
              ),
              SolarPowerSection(),
              SizedBox(
                height: 50,
              ),
              Container(
                constraints: BoxConstraints(maxWidth: 1280),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: NetworkImageWidget(
                    "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Solar+power/solar+power+1.png",
                    width: double.infinity,
                    // height: 1280,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SolarPowerInfo(),
              SizedBox(
                height: isMobile ? 20 : 50,
              ),
              InputDesign2(),
              CleanEnergySection(),
              SizedBox(
                height: 20,
              ),
              PowerGenerationSection(),
              SizedBox(
                height: 30,
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
              //     "Sustainability from Sun to Soil, Empowering a Greener Future Together ",
              //     style: isDesktop
              //         ? AppTextStyles.titleStyle
              //         : AppTextStyles.titleStyleMobile,
              //     textAlign: TextAlign.center,
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
                      // Positioned.fill(
                      //   child: Align(
                      //     alignment: Alignment.centerRight,
                      //     child: Image.asset(
                      //       'icons/hand1.png',
                      //       width: MediaQuery.of(context).size.width * 0.33,
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
                                  'Sustainability from Sun to Soil, Empowering a Greener Future Together',
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
