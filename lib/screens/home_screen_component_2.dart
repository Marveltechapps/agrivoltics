import 'package:agri_voltics/theme/styles.dart';
import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CollaborativeVenturesSection extends StatelessWidget {
  const CollaborativeVenturesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth <= 768;

        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 20 : 80,
            vertical: 44,
          ),
          color: const Color(0xFF7B9540), // stone-500
          child: Column(
            children: [
              // Top text section
              Container(
                constraints: const BoxConstraints(maxWidth: 1280),
                child: Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          // Spark at start
                          WidgetSpan(
                            child: Stack(
                              alignment: Alignment.topCenter,
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  bottom: -10,
                                  right: 0, // push it higher above text
                                  child: SvgPicture.string(
                                    '''<svg width="34" height="42" viewBox="0 0 34 42" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_164_1425)">
<path d="M22.4079 1.52344C15.8789 1.52344 9.46853 2.60713 2.90137 2.60713" stroke="#E9EDC9" stroke-width="3" stroke-linecap="round"/>
<path d="M26.74 13.4434C21.5164 13.4434 11.1387 20.5349 7.03027 23" stroke="#E9EDC9" stroke-width="3" stroke-linecap="round"/>
<path d="M31.0766 24.2812C31.0766 32.6875 30.0732 32.1574 29.0303 40.5009" stroke="#E9EDC9" stroke-width="3" stroke-linecap="round"/>
</g>
<defs>
<clipPath id="clip0_164_1425">
<rect width="33" height="42" fill="white" transform="translate(0.530273)"/>
</clipPath>
</defs>
</svg>
''',
                                    width: isMobile ? 20 : 30,
                                    // height: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                // Invisible char to hold space for spark
                                SizedBox(
                                    width: 0,
                                    height: FontSizes.scale(context, 70) - 0),
                              ],
                            ),
                          ),
                          const WidgetSpan(child: SizedBox(width: 8)),

                          TextSpan(
                            text:
                                'Collaborative Ventures for a Sustainable Future',
                            style: GoogleFonts.inter(
                              fontSize: isMobile ? 32 : 45,
                              fontWeight: FontWeight.w500,
                              height: 1,
                              color: Colors.white,
                            ),
                            // textAlign: isMobile ? TextAlign.left : TextAlign.center,
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
                                  child: SvgPicture.string(
                                    '''<svg width="43" height="53" viewBox="0 0 43 53" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_164_1431)">
<path d="M2.61621 23.1052C6.48403 15.7492 9.85937 7.64523 16.1344 2.05273" stroke="#E9EDC9" stroke-width="3" stroke-linecap="round"/>
<path d="M17.9912 32.6798C24.5363 32.1764 30.5757 28.9022 36.414 26.1777" stroke="#E9EDC9" stroke-width="3" stroke-linecap="round"/>
<path d="M21.2412 51.1016H40.7477" stroke="#E9EDC9" stroke-width="3" stroke-linecap="round"/>
</g>
<defs>
<clipPath id="clip0_164_1431">
<rect width="42" height="53" fill="white" transform="translate(0.530273)"/>
</clipPath>
</defs>
</svg>
''',
                                    width: isMobile ? 20 : 30,
                                    // height: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                // Invisible char to hold space for spark
                                SizedBox(
                                    width: 20,
                                    height: FontSizes.scale(context, 70) -
                                        (isMobile ? 5 : 20)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   width: double.infinity,
                    //   child: Text(
                    //     'Collaborative Ventures for a Sustainable Future',
                    //     style: GoogleFonts.inter(
                    //       fontSize: isMobile ? 32 : 45,
                    //       fontWeight: FontWeight.w500,
                    //       height: 1,
                    //       color: Colors.white,
                    //     ),
                    //     textAlign: isMobile ? TextAlign.left : TextAlign.center,
                    //   ),
                    // ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'This initiative emphasizes the importance of strategic partnerships that drive innovation and sustainability. By fostering joint ventures, we leverage collective expertise and resources to restore and protect the land while boosting local economies. Our commitment to sustainable practices ensures that our efforts contribute to a healthier environment and a thriving community for generations to come.',
                        style: GoogleFonts.openSans(
                          fontSize: isMobile ? 14 : 20,
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textAlign: isMobile ? TextAlign.left : TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: isMobile ? 20 : 44),

              // First image and text section
              Container(
                constraints: BoxConstraints(maxWidth: 1560),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                      width: isMobile
                          ? MediaQuery.of(context).size.width * 0.9
                          : MediaQuery.of(context).size.width / 2.2 - 30,
                      height: isMobile ? null : 500,
                      constraints: BoxConstraints(
                        maxWidth: 720,
                        minWidth: 360,
                        minHeight: 242,
                      ),
                      child: NetworkImageWidget(
                        'https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/About+us/We+buy+Land+or+Make+joint+Venture.png',
                        fit: isMobile ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: isMobile
                          ? MediaQuery.of(context).size.width * 0.9
                          : MediaQuery.of(context).size.width / 2.2 - 30,
                      height: isMobile ? null : 500,
                      constraints: const BoxConstraints(
                        maxWidth: 720,
                        minWidth: 360,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 0,
                      ),
                      color: const Color(0xFFF7FEE7), // lime-100
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          isMobile
                              ? SizedBox(
                                  height: 10,
                                )
                              : SizedBox(),
                          Text(
                            'We buy Land or Make joint Venture',
                            style: GoogleFonts.inter(
                              fontSize: isMobile ? 22 : 24,
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                              color: Color(0xFF262626), // neutral-800
                            ),
                          ),
                          const SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: GoogleFonts.openSans(
                                    fontSize: isMobile ? 16 : 18,
                                    height: 1.4,
                                    color: Color(0xFF262626),
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          '• Land ventures provide multiple pathways for implementing agrivoltaics through ',
                                    ),
                                    TextSpan(
                                      text:
                                          'outright purchase and joint ventures',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    TextSpan(text: '.\n\n'),
                                    TextSpan(
                                      text:
                                          '• Outright purchase offers full control of the land, ensuring long-term integration of solar and agricultural systems. Joint ventures enable collaboration with landowners, expanding opportunities for large-scale agrivoltaic installations.\n\n',
                                    ),
                                    TextSpan(
                                      text:
                                          '• Each approach supports sustainable development by combining energy production with agriculture, driving both environmental and economic benefits.',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          isMobile
                              ? SizedBox(
                                  height: 30,
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              isMobile
                  ? SizedBox(
                      height: 20,
                    )
                  : SizedBox(),
              // Second text and image section
              Container(
                constraints: const BoxConstraints(maxWidth: 1560),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                      width: isMobile
                          ? MediaQuery.of(context).size.width * 0.9
                          : MediaQuery.of(context).size.width / 2.2 - 30,
                      height: isMobile ? null : 500,
                      constraints: const BoxConstraints(
                        maxWidth: 720,
                        minWidth: 360,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: isMobile ? 20 : 0,
                      ),
                      color: const Color(0xFFF7FEE7), // lime-100
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Our Commitment to Sustainable Future',
                            style: GoogleFonts.inter(
                              fontSize: isMobile ? 24 : 26,
                              fontWeight: FontWeight.w700,
                              height: 1.3,
                              color: Color(0xFF262626), // neutral-800
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '• Our mission prioritizes harnessing solar energy through agrivoltaics, a sustainable practice that combines renewable energy production with agriculture. By integrating solar panels with farming, we optimize land use, reduce carbon emissions, and conserve water, all while preserving natural resources.\n\n• This approach promotes biodiversity, improves soil health, and supports responsible land management, leading to long-term environmental balance. Beyond ecological benefits, our initiatives drive local economic growth by creating jobs, supporting small businesses, and fostering community development—ensuring both environmental and economic sustainability for generations to come.',
                            style: GoogleFonts.openSans(
                              fontSize: isMobile ? 16 : 17,
                              height: 1.25,
                              color: Color(0xFF262626),
                            ),
                          ),
                          isMobile ? const SizedBox(height: 20) : SizedBox(),
                        ],
                      ),
                    ),
                    Container(
                      width: isMobile
                          ? MediaQuery.of(context).size.width * 0.9
                          : MediaQuery.of(context).size.width / 2.2 - 30,
                      height: isMobile ? null : 500,
                      constraints: BoxConstraints(
                        maxWidth: 720,
                        minWidth: 360,
                      ),
                      child: NetworkImageWidget(
                        'https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/About+us/Our+Commitment+to+Sustainable+Future.png',
                        fit: isMobile ? BoxFit.contain : BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
