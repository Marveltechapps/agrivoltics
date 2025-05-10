import 'package:agri_voltics/constants/text_styles.dart';
import 'package:flutter/material.dart';

class Section5 extends StatelessWidget {
  const Section5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 991;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 40,
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
                    maxWidth: 1103,
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: isDesktop
                          ? MediaQuery.of(context).size.width * 0.1
                          : 20),
                  child: Text(
                    "What's next after purchasing or joint venture of land",
                    style: isDesktop
                        ? AppTextStyles.titleStyle
                        : AppTextStyles.titleStyleMobile,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 10,
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
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: AppTextStyles.maxImageWidth,
              minWidth: 360,
              minHeight: 240,
            ),
            child: AspectRatio(
              aspectRatio: 1.5,
              child: Image.network(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/7ffae0a9dc50351575927c387c14ad2ce6e0b387?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
