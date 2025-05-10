import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/text_styles.dart';

class PartnerWorksSection extends StatelessWidget {
  const PartnerWorksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 991;

        return Padding(
          padding: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            children: [
              Wrap(
                spacing: 40,
                runSpacing: 40,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 200,
                      maxWidth: isMobile
                          ? constraints.maxWidth
                          : MediaQuery.of(context).size.width / 2.8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFD02F),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Partner works',
                            style: AppTextStyles.partnerWorksTag,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Partnership in Farming - Joint Ventures',
                          style: isMobile
                              ? AppTextStyles.mainHeadingMobile
                              : AppTextStyles.mainHeading,
                        ),
                        const SizedBox(height: 39),
                        Text(
                          "We offer a Joint Venture Farming model designed to empower landowners and individuals passionate about agriculture. If you're a landowner with farming expertise, we provide an opportunity for you to cultivate your land and maximize its potential through a collaborative approach.",
                          style: AppTextStyles.bodyText,
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'Our Joint Venture model allows experienced farmers and investors to come together, sharing resources, skills, and profits. Landowners who wish to actively farm can manage operations, while others interested in participating can join as partners. This structure promotes efficient land use, sustainable farming practices, and shared financial growth.',
                          style: AppTextStyles.bodyText,
                        ),
                        SizedBox(height: isMobile ? 40 : 40),
                        _buildFeatureItem(
                          'assets/icons/page2-1.svg',
                          'Landowners with expertise take the lead in farming operations',
                        ),
                        SizedBox(height: isMobile ? 20 : 30),
                        _buildFeatureItem(
                          'assets/icons/page2-2.svg',
                          'Partners contribute financially, with profits shared based on agreements.',
                        ),
                        SizedBox(height: isMobile ? 20 : 30),
                        _buildFeatureItem(
                          'assets/icons/page2-3.svg',
                          'We support with technology, market access, and operational guidance.',
                        ),
                      ],
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 200,
                      maxWidth: isMobile ? constraints.maxWidth - 40 : 500,
                    ),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/25ab61b3940d3eaffbd49f5ec7e250e0433e66d2?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                          fit: BoxFit.cover,
                        ),
                      ),
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

  Widget _buildFeatureItem(String imageUrl, String text) {
    return Row(
      spacing: 15,
      // crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        SvgPicture.network(
          imageUrl,
          width: 40,
          height: 40,
          fit: BoxFit.contain,
          placeholderBuilder: (context) => CircularProgressIndicator(),
        ),
        Expanded(
          child: Text(
            text,
            style: AppTextStyles.featureText,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
