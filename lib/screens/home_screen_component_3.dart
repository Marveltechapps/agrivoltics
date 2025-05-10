import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  const SectionContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Title Section
              Center(
                child: Text(
                  'Agrivoltaics',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: isMobile ? 40 : 50,
                    color: const Color(0xFF222222),
                    fontWeight: FontWeight.w700,
                    height: 1,
                    letterSpacing: -1.52,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 28),

              // Description
              Text(
                'Our approach begins with generating renewable solar energy through carefully placed panels over agricultural land. This setup not only optimizes solar power production but also prepares the land for future agricultural and animal husbandry activities. This dual-use approach ensures efficient land utilization.',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 18,
                  color: const Color(0xFF444444),
                  fontWeight: FontWeight.w400,
                  height: 32 / 24,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 38),

              // Image
              isMobile
                  ? SizedBox()
                  : Center(
                      child: Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/26daa715b1e20eb6315b404c230586849302e846?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                        width: isMobile
                            ? constraints.maxWidth
                            : MediaQuery.of(context).size.width / 2,
                        fit: BoxFit.contain,
                      ),
                    ),

              isMobile ? SizedBox() : const SizedBox(height: 38),

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
                      runSpacing: 20,
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: _InfoCard(
                            title: 'Solar Power',
                            description:
                                'Agrivoltaics efficiently generates clean energy by using solar panels installed over agricultural land. These panels harness sunlight to produce renewable electricity while minimizing land competition, contributing to sustainable and eco-friendly power solutions.',
                            isMobile: isMobile,
                          ),
                        ),
                        Expanded(
                          child: _InfoCard(
                            title: 'Integrated Farming',
                            description:
                                'Agrivoltaics enhances crop production by providing partial shade from solar panels, which helps regulate temperatures and reduce water loss. This creates a favorable microclimate, potentially improving crop growth, yield, and overall agricultural productivity.',
                            isMobile: isMobile,
                          ),
                        ),
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
                          ),
                        ),
                        Expanded(
                          child: _InfoCard(
                            title: 'Integrated Farming',
                            description:
                                'Agrivoltaics enhances crop production by providing partial shade from solar panels, which helps regulate temperatures and reduce water loss. This creates a favorable microclimate, potentially improving crop growth, yield, and overall agricultural productivity.',
                            isMobile: isMobile,
                          ),
                        ),
                      ],
                    ),
            ],
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
  _InfoCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.isMobile})
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
        padding: EdgeInsets.fromLTRB(32, 31, 30, 59),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: isMobile ? 28 : 32,
                color: Color(0xFF222222),
                fontWeight: FontWeight.w700,
                height: 1,
                letterSpacing: -0.67,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 39),
            Text(
              description,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: isMobile ? 16 : 20,
                color: Color(0xFF444444),
                fontWeight: FontWeight.w400,
                height: 32 / 24,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 39),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF7A9737),
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 42 : 52,
                  vertical: isMobile ? 12 : 17,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              child: Text(
                'See More',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: isMobile ? 22 : 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  height: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
