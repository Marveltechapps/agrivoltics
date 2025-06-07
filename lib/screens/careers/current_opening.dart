import 'package:flutter/material.dart';
import './utils/responsive_helper.dart';
import './styles/text_styles.dart';

class CurrentOpenings extends StatelessWidget {
  const CurrentOpenings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 360,
        maxWidth: 1280,
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current opening',
                    style: AppTextStyles.getHeadingStyle(
                      context,
                      fontSize: ResponsiveHelper.getResponsiveFontSize(
                        context,
                        40,
                        30,
                        25,
                      ),
                      lineHeight: ResponsiveHelper.getResponsiveLineHeight(
                        context,
                        80,
                        65,
                        50,
                      ),
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 8.985),
                  Text(
                    "If you think you might be a good fit for our team, we'd love to hear from you! If you don't find a suitable position, you can still apply here.",
                    style: AppTextStyles.getBodyStyle(
                      context,
                      fontSize: ResponsiveHelper.getResponsiveFontSize(
                        context,
                        22,
                        20,
                        20,
                      ),
                      lineHeight: ResponsiveHelper.getResponsiveLineHeight(
                        context,
                        41,
                        32,
                        26,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.black,
              ),
            ],
          ),
          const SizedBox(height: 39),
          Text(
            'No opening now.... Stay updated for new position that may appear.',
            style: AppTextStyles.getBodyStyle(
              context,
              fontSize: ResponsiveHelper.getResponsiveFontSize(
                context,
                22,
                20,
                20,
              ),
              lineHeight: ResponsiveHelper.getResponsiveLineHeight(
                context,
                30,
                28,
                26,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
