import 'package:agri_voltics/theme/styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'content_block.dart';

class SustainableSection extends StatelessWidget {
  const SustainableSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [
      ContentBlock(
        imageUrl:
            "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Integrated+Farming/Medicinal+Plants.png",
        imageAspectRatio: 16 / 9,
        title: 'Medicinal Plants',
        description:
            'We cultivate medicinal plants, providing natural health solutions and supporting wellness through herbs with proven therapeutic benefits.',
        borderRadius: 16,
        boxShadow: BoxShadow(
          offset: const Offset(9, -5),
          blurRadius: 40,
          color: Colors.black.withOpacity(0.1),
        ),
      ),
      ContentBlock(
        imageUrl:
            "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Integrated+Farming/Organic+Farming.png",
        imageAspectRatio: 16 / 9,
        title: 'Organic Farming',
        description:
            'We grow crops without synthetic chemicals, using natural inputs to ensure healthy, chemical-free produce while promoting biodiversity and soil fertility.',
        borderRadius: 12,
        boxShadow: BoxShadow(
          offset: const Offset(9, -5),
          blurRadius: 40,
          color: Colors.black.withOpacity(0.1),
        ),
      ),
      ContentBlock(
        imageUrl:
            "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Integrated+Farming/Integrated+Farming+1.png",
        imageAspectRatio: 16 / 9,
        title: 'Integrated Farming',
        description:
            'We integrate crops, livestock, and aquaculture, maximizing resource efficiency and minimizing waste, creating a balanced and sustainable farm ecosystem.',
        borderRadius: 16,
        boxShadow: BoxShadow(
          offset: const Offset(9, -5),
          blurRadius: 40,
          color: Colors.black.withOpacity(0.1),
        ),
      ),
    ];
    final isSmallScreen = MediaQuery.of(context).size.width <= 991;
    final isMobile = MediaQuery.of(context).size.width <= 768;
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color.fromRGBO(123, 149, 64, 1),
      padding: EdgeInsets.symmetric(
        vertical: isSmallScreen ? 40 : 64,
        horizontal: 16,
      ),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                // Spark at start
                isMobile
                    ? WidgetSpan(child: SizedBox())
                    : WidgetSpan(
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
                  text: 'Innovative Practices for Sustainable Agriculture',
                  style: GoogleFonts.inter(
                    fontSize: isSmallScreen ? 30 : 50,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -1.30,
                    height: 1.0,
                    color: Colors.white,
                  ),
                  // textAlign: isMobile ? TextAlign.left : TextAlign.center,
                ),

                const WidgetSpan(child: SizedBox(width: 8)),

                // Spark at end
                isMobile
                    ? WidgetSpan(child: SizedBox())
                    : WidgetSpan(
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

          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Text(
          //     'Innovative Practices for Sustainable Agriculture',
          //     style: GoogleFonts.inter(
          //       fontSize: isSmallScreen ? 30 : 50,
          //       fontWeight: FontWeight.w700,
          //       letterSpacing: -1.30,
          //       height: 1.0,
          //       color: Colors.white,
          //     ),
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          SizedBox(height: isSmallScreen ? 20 : 50),
          MediaQuery.of(context).size.width <= 500
              ? Center(
                  child: CarouselSlider.builder(
                    itemCount: images.length,
                    options: CarouselOptions(
                      // height: 500,
                      aspectRatio: 16 / 14,
                      autoPlay: false,
                      enlargeCenterPage:
                          true, // 💥 THIS makes the center image pop
                      viewportFraction: 0.55, // Show some parts of side images
                      enableInfiniteScroll: true, // 🔁 Infinite scroll
                      initialPage: 1,
                      enlargeStrategy: CenterPageEnlargeStrategy.scale,
                      scrollPhysics: BouncingScrollPhysics(), // Fancy touch
                    ),
                    itemBuilder: (context, index, realIdx) {
                      return images[index];
                    },
                  ),
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 30,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // runSpacing: 30,
                    // alignment: WrapAlignment.center,
                    // runAlignment: WrapAlignment.center,
                    // crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      ContentBlock(
                        imageUrl:
                            "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Integrated+Farming/Medicinal+Plants.png",
                        imageAspectRatio: 1.45,
                        title: 'Medicinal Plants',
                        description:
                            'We cultivate medicinal plants, providing natural health solutions and supporting wellness through herbs with proven therapeutic benefits.',
                        borderRadius: 16,
                        boxShadow: BoxShadow(
                          offset: const Offset(9, -5),
                          blurRadius: 40,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ),
                      ContentBlock(
                        imageUrl:
                            "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Integrated+Farming/Organic+Farming.png",
                        imageAspectRatio: 1.33,
                        title: 'Organic Farming',
                        description:
                            'We grow crops without synthetic chemicals, using natural inputs to ensure healthy, chemical-free produce while promoting biodiversity and soil fertility.',
                        borderRadius: 12,
                        boxShadow: BoxShadow(
                          offset: const Offset(9, -5),
                          blurRadius: 40,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ),
                      ContentBlock(
                        imageUrl:
                            "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Integrated+Farming/Integrated+Farming+1.png",
                        imageAspectRatio: 1.45,
                        title: 'Integrated Farming',
                        description:
                            'We integrate crops, livestock, and aquaculture, maximizing resource efficiency and minimizing waste, creating a balanced and sustainable farm ecosystem.',
                        borderRadius: 16,
                        boxShadow: BoxShadow(
                          offset: const Offset(9, -5),
                          blurRadius: 40,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
