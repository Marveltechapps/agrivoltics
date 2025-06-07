import 'package:agri_voltics/constants/text_styles.dart';
import 'package:agri_voltics/screens/solutions/agrivoltaics_info.dart';
import 'package:agri_voltics/screens/solutions/carbon_credits.dart';
import 'package:agri_voltics/screens/solutions/solutionsbanner.dart';
import 'package:agri_voltics/theme/styles.dart' as p;
import 'package:agri_voltics/widgets/Navbar.dart';
import 'package:agri_voltics/widgets/mainbanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/header_widget.dart';
import '../widgets/footer_widget.dart';

class Solutions extends StatelessWidget {
  const Solutions({Key? key}) : super(key: key);

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
              SizedBox(
                height: 0,
              ),
              // Solutionsbanner(),
              Mainbanner(
                  imageUrl:
                      "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Solutions/Solutions.png",
                  name: 'Solutions'),
              SizedBox(
                height: 50,
              ),
              AgrivoltaicsInfo(),
              SizedBox(
                height: 50,
              ),
              CarbonCredits(),
              SizedBox(
                height: isMobile ? 40 : 50,
              ),
              // Container(
              //   constraints: const BoxConstraints(
              //     maxWidth: 1280,
              //   ),
              //   padding: EdgeInsets.symmetric(
              //       vertical: 10,
              //       horizontal: isDesktop
              //           ? MediaQuery.of(context).size.width * 0.05
              //           : 20),
              //   child: Text(
              //     "With our tailor solution Let’s save the next generation ",
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
                                  'With our tailor solution Let’s save the next generation',
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
