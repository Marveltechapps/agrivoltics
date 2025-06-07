import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import './constants/colors.dart';
import './constants/text_styles.dart';

class SolarPowerInfo extends StatelessWidget {
  const SolarPowerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 991;
        final isTablet =
            constraints.maxWidth <= 991 && constraints.maxWidth > 640;
        final isMobile = constraints.maxWidth <= 640;

        return Container(
          constraints: BoxConstraints(maxWidth: 1280),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: isDesktop ? 60 : 20),
            child: isDesktop
                ? Row(
                    spacing: isMobile ? 24 : (isTablet ? 32 : 24),
                    // runSpacing: isMobile ? 24 : (isTablet ? 32 : 40),
                    // alignment: WrapAlignment.center,
                    // crossAxisAlignment: WrapCrossAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Image Section
                      Expanded(
                        child: Container(
                          width: isMobile
                              ? constraints.maxWidth
                              : (isTablet ? 300 : 380),
                          child: AspectRatio(
                            aspectRatio: 16 / 11,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.719),
                              child: NetworkImageWidget(
                                "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Solar+power/why+choose+solar+power.png",
                                fit: BoxFit.cover,
                                width: isMobile
                                    ? constraints.maxWidth
                                    : (isTablet ? 300 : 380),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Content Section
                      Container(
                        width: MediaQuery.of(context).size.width < 1280
                            ? MediaQuery.of(context).size.width / 2.5
                            : 1280 / 2.5,
                        constraints: BoxConstraints(
                          minWidth: isMobile ? constraints.maxWidth : 360,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Badge
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12.412,
                                    vertical: 7.686,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFD02F),
                                    borderRadius: BorderRadius.circular(10.04),
                                  ),
                                  child: Text(
                                    'Powering a Greener Future with Solar Energy',
                                    style: AppTextStyles.badge,
                                  ),
                                ),
                                SizedBox(
                                    height:
                                        isMobile ? 24 : (isTablet ? 20 : 15)),

                                // Heading
                                Text(
                                  'Why Choose Solar Power?',
                                  style: isMobile
                                      ? AppTextStyles.headingMobile
                                      : (isTablet
                                          ? AppTextStyles.headingTablet
                                          : AppTextStyles.heading),
                                ),
                              ],
                            ),
                            SizedBox(
                                height: isMobile ? 24 : (isTablet ? 30 : 30)),

                            // Body Text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "In today's world, addressing climate change has become more critical than ever. Solar power stands as one of the most promising solutions to combat the devastating effects of global warming and the excessive release of CO2 into the atmosphere. By tapping into the sun's abundant energy, we can drastically reduce our reliance on fossil fuels and create a cleaner, greener future.",
                                  style: isMobile
                                      ? AppTextStyles.bodyMobile
                                      : (isTablet
                                          ? AppTextStyles.bodyTablet
                                          : AppTextStyles.body),
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 80,
                                ),
                                const SizedBox(height: 24),
                                Text(
                                  "Solar power not only generates clean, renewable energy but also plays a key role in environmental protection. It reduces harmful emissions, minimizes our carbon footprint, and preserves natural resources, offering a sustainable path forward for our planet. By adopting solar energy, we contribute to a healthier world and ensure a safer environment for future generations.",
                                  style: isMobile
                                      ? AppTextStyles.bodyMobile
                                      : (isTablet
                                          ? AppTextStyles.bodyTablet
                                          : AppTextStyles.body),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Column(
                    spacing: isMobile ? 24 : (isTablet ? 32 : 24),
                    // runSpacing: isMobile ? 24 : (isTablet ? 32 : 40),
                    // alignment: WrapAlignment.center,
                    // crossAxisAlignment: WrapCrossAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Image Section
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24.719),
                        child: Image.network(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/bafd476cb69a2f80fe6e5f138fc07c1544548d1b',
                          fit: BoxFit.cover,
                          width: isMobile
                              ? constraints.maxWidth
                              : (isTablet ? constraints.maxWidth : 380),
                        ),
                      ),

                      // Content Section
                      Container(
                        width: isMobile
                            ? constraints.maxWidth
                            : (isTablet
                                ? constraints.maxWidth
                                : constraints.maxWidth / 2.5),
                        constraints: BoxConstraints(
                          minWidth: isMobile ? constraints.maxWidth : 360,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Badge
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12.412,
                                    vertical: 7.686,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.yellowBadge,
                                    borderRadius: BorderRadius.circular(10.04),
                                  ),
                                  child: Text(
                                    'Powering a Greener Future with Solar Energy',
                                    style: AppTextStyles.badge,
                                  ),
                                ),
                                SizedBox(
                                    height: isMobile
                                        ? 24
                                        : (isTablet ? 32 : 19.775)),

                                // Heading
                                Text(
                                  'Why Choose Solar Power?',
                                  style: isMobile
                                      ? AppTextStyles.headingMobile
                                      : (isTablet
                                          ? AppTextStyles.headingTablet
                                          : AppTextStyles.heading),
                                ),
                              ],
                            ),
                            SizedBox(
                                height: isMobile ? 24 : (isTablet ? 32 : 39)),

                            // Body Text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "In today's world, addressing climate change has become more critical than ever. Solar power stands as one of the most promising solutions to combat the devastating effects of global warming and the excessive release of CO2 into the atmosphere. By tapping into the sun's abundant energy, we can drastically reduce our reliance on fossil fuels and create a cleaner, greener future.",
                                  style: isMobile
                                      ? AppTextStyles.bodyMobile
                                      : (isTablet
                                          ? AppTextStyles.bodyTablet
                                          : AppTextStyles.body),
                                ),
                                const SizedBox(height: 24),
                                Text(
                                  "Solar power not only generates clean, renewable energy but also plays a key role in environmental protection. It reduces harmful emissions, minimizes our carbon footprint, and preserves natural resources, offering a sustainable path forward for our planet. By adopting solar energy, we contribute to a healthier world and ensure a safer environment for future generations.",
                                  style: isMobile
                                      ? AppTextStyles.bodyMobile
                                      : (isTablet
                                          ? AppTextStyles.bodyTablet
                                          : AppTextStyles.body),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
