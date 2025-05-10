import 'package:flutter/material.dart';
import './styles/text_styles.dart';

class WorkWithUsSection extends StatelessWidget {
  const WorkWithUsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 991;
        final isTablet =
            constraints.maxWidth <= 991 && constraints.maxWidth > 640;
        final isMobile = constraints.maxWidth <= 640;

        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 1525),
            child: Wrap(
              spacing: 50,
              runSpacing: 40,
              direction: Axis.horizontal,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.4,
                  constraints: BoxConstraints(
                    minWidth: isDesktop ? 380 : double.infinity,
                    minHeight: isMobile ? 250 : 333.658,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24.719),
                    child: Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/9426b8830b5879fc1c1dda99a28902589b399678',
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.4,
                  constraints: BoxConstraints(
                    minWidth: isDesktop ? 360 : double.infinity,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Work with us',
                        style: AppTextStyles.headingStyle(context),
                      ),
                      SizedBox(height: isMobile ? 12 : 8.566),
                      Text(
                        "As one of the nation's leading developers, owners, and operators of "
                        "utility scale solar energy plants, we're always on the search for "
                        "motivated, passionate, and talented professionals to join our growing "
                        "team and help us fulfill our mission.\n\nInterested in a career with us? "
                        "Explore our career opportunities below and check back often for new "
                        "positions that may appear.",
                        style: AppTextStyles.descriptionStyle(context),
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
