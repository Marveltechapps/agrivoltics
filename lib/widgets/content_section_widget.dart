import 'package:flutter/material.dart';
import '../theme/styles.dart';

class ContentSectionWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final bool imageLeft;

  const ContentSectionWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.imageLeft = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 991;
    final content = [
      Expanded(
        child: Image.network(
          imageUrl,
          fit: BoxFit.contain,
        ),
      ),
      const SizedBox(width: 40),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: FontSizes.scale(context, 32),
                color: AppColors.text,
                fontWeight: FontWeight.w500,
                height: 1,
              ),
            ),
            const SizedBox(height: 39),
            Text(
              description,
              style: AppTextStyles.bodyText,
            ),
          ],
        ),
      ),
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: isDesktop
          ? Row(
              children: imageLeft ? content : content.reversed.toList(),
            )
          : Column(
              children: [
                Image.network(
                  imageUrl,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 40),
                Text(
                  title,
                  style: AppTextStyles.sectionTitle,
                ),
                const SizedBox(height: 39),
                Text(
                  description,
                  style: AppTextStyles.bodyText,
                ),
              ],
            ),
    );
  }
}
