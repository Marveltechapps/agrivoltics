import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionContainer extends StatelessWidget {
  const SectionContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;

        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 20 : 60, vertical: 30),
          child: Container(
            // width: MediaQuery.of(context).si,
            constraints: BoxConstraints(maxWidth: 1280),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Title Section
                Center(
                  child: Text(
                    'Agrivoltaics',
                    style: GoogleFonts.inter(
                      // fontFamily: 'Inter',
                      fontSize: isMobile ? 40 : 55,
                      color: const Color(0xFF222222),
                      fontWeight: FontWeight.w700,
                      height: 1,
                      letterSpacing: -1.52,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(height: isMobile ? 15 : 28),

                // Description
                Text(
                  'Our approach begins with generating renewable solar energy through carefully placed panels over agricultural land. This setup not only optimizes solar power production but also prepares the land for future agricultural and animal husbandry activities. This dual-use approach ensures efficient land utilization.',
                  style: GoogleFonts.inter(
                    // fontFamily: 'Inter',
                    fontSize: isMobile ? 16 : 18,
                    color: const Color(0xFF444444),
                    fontWeight: FontWeight.w400,
                    height: 32 / 24,
                  ),
                  textAlign: isMobile ? TextAlign.justify : TextAlign.center,
                ),

                SizedBox(height: isMobile ? 5 : 38),

                // Image
                isMobile
                    ? SizedBox()
                    : Center(
                        child: NetworkImageWidget(
                          "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/About+us/agrivoltaics.png",
                          width: isMobile
                              ? constraints.maxWidth
                              : MediaQuery.of(context).size.width / 2,
                          fit: BoxFit.contain,
                        ),
                      ),

                isMobile ? SizedBox() : const SizedBox(height: 5),

                // Cards Section
                // Wrap(
                //   spacing: 183,
                //   runSpacing: 20,
                //   alignment: WrapAlignment.center,
                //   children: [
                //     _InfoCard(
                //       title: 'Solar Power',
                //       description: 'Agrivoltaics efficiently generates clean energy by using solar panels installed over agricultural land. These panels harness sunlight to produce renewable electricity while minimizing land competition, contributing to sustainable and eco-friendly power solutions.',
                //     ),
                //     _InfoCard(
                //       title: 'Integrated Farming',
                //       description: 'Agrivoltaics enhances crop production by providing partial shade from solar panels, which helps regulate temperatures and reduce water loss. This creates a favorable microclimate, potentially improving crop growth, yield, and overall agricultural productivity.',
                //     ),
                //   ],
                // ),
                isMobile
                    ? Wrap(
                        spacing: 20,
                        runSpacing: 10,
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.spaceBetween,
                        children: [
                          _InfoCard(
                            title: 'Solar Power',
                            description:
                                'Agrivoltaics efficiently generates clean energy by using solar panels installed over agricultural land. These panels harness sunlight to produce renewable electricity while minimizing land competition, contributing to sustainable and eco-friendly power solutions.',
                            isMobile: isMobile,
                            route: '/solarpower',
                          ),
                          _InfoCard(
                              title: 'Integrated Farming',
                              description:
                                  'Agrivoltaics enhances crop production by providing partial shade from solar panels, which helps regulate temperatures and reduce water loss. This creates a favorable microclimate, potentially improving crop growth, yield, and overall agricultural productivity.',
                              isMobile: isMobile,
                              route: '/integratedfarm'),
                        ],
                      )
                    : Row(
                        spacing: 20,
                        // runSpacing: 20,
                        // direction: Axis.horizontal,
                        // alignment: WrapAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: _InfoCard(
                                title: 'Solar Power',
                                description:
                                    'Agrivoltaics efficiently generates clean energy by using solar panels installed over agricultural land. These panels harness sunlight to produce renewable electricity while minimizing land competition, contributing to sustainable and eco-friendly power solutions.',
                                isMobile: isMobile,
                                route: '/solarpower'),
                          ),
                          Expanded(
                            child: _InfoCard(
                                title: 'Integrated Farming',
                                description:
                                    'Agrivoltaics enhances crop production by providing partial shade from solar panels, which helps regulate temperatures and reduce water loss. This creates a favorable microclimate, potentially improving crop growth, yield, and overall agricultural productivity.',
                                isMobile: isMobile,
                                route: '/integratedfarm'),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final String description;
  final bool isMobile;
  final String route;

  _InfoCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.isMobile,
      required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 30,
        maxWidth: isMobile
            ? MediaQuery.of(context).size.width / 1
            : MediaQuery.of(context).size.width / 2.2,
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(32, 31, 30, isMobile ? 15 : 50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.inter(
                // fontFamily: 'Inter',
                fontSize: isMobile ? 28 : 30,
                color: Color(0xFF222222),
                fontWeight: FontWeight.w700,
                height: 1,
                letterSpacing: -0.67,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: GoogleFonts.inter(
                // fontFamily: 'Inter',
                fontSize: isMobile ? 16 : 20,
                color: Color(0xFF444444),
                fontWeight: FontWeight.w400,
                height: 32 / 24,
              ),
              textAlign: isMobile ? TextAlign.justify : TextAlign.justify,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                GoRouter.of(context).push(route);
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF7A9737),
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 30 : 48,
                  vertical: isMobile ? 8 : 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              child: Text(
                'See More',
                style: GoogleFonts.poppins(
                  // fontFamily: 'Poppins',
                  fontSize: isMobile ? 20 : 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
