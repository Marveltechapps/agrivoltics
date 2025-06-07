import 'package:agri_voltics/constants/text_styles.dart';
import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';

class Section5 extends StatelessWidget {
  const Section5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 991;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            constraints: const BoxConstraints(
              maxWidth: AppTextStyles.maxContentWidth,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: AppTextStyles.defaultPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  constraints: const BoxConstraints(
                    maxWidth: 1280,
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: isDesktop
                          ? MediaQuery.of(context).size.width * 0.1
                          : 0),
                  child: Text(
                    "What's next\nafter purchasing or\njoint venture of land",
                    style: isDesktop
                        ? AppTextStyles.titleStyle
                        : AppTextStyles.titleStyleMobile.copyWith(fontSize: 32),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: isDesktop ? 20 : 0),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: isDesktop
                          ? MediaQuery.of(context).size.width * 0.1
                          : 20),
                  child: Text(
                    'Once the land is acquired, we maximize its potential by implementing '
                    'agrivoltaic, a sustainable practice that combines agriculture with '
                    'solar power generation. This dual-use approach ensures both energy '
                    'production and crop cultivation, promoting environmental conservation '
                    'and long-term profitability.',
                    style: AppTextStyles.descriptionStyle,
                    textAlign: isDesktop ? TextAlign.center : TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1280,
              minWidth: 360,
              minHeight: 240,
            ),
            child: AspectRatio(
              aspectRatio: 1.5,
              child: NetworkImageWidget(
                "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Land+partnership/what%E2%80%99s+next+after+purchaing+or+joint+venture+of+land.png",
                fit: BoxFit.contain,
                // alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
