import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: NetworkImageWidget(
            "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/About+us/Importance+of+Agrivoltaics.png",
            // width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      const SizedBox(width: 30),
      Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    "Importance of ",
                    style: GoogleFonts.inter(
                      // fontFamily: 'Inter',
                      fontSize: FontSizes.scale(context, 32),
                      color: AppColors.text,
                      fontWeight: FontWeight.w600,
                      height: 1,
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Make the SVG responsive
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return SvgPicture.asset(
                            'assets/icons/impofagri.svg',
                            width:
                                constraints.maxWidth * 0.42, // adjust as needed
                            fit: BoxFit.contain,
                          );
                        },
                      ),
                      Text(
                        "Agrivoltics",
                        style: GoogleFonts.inter(
                          // fontFamily: 'Inter',
                          fontSize: FontSizes.scale(context, 32),
                          color: AppColors.text,
                          fontWeight: FontWeight.w600,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Text(
              //   title,
              //   style: GoogleFonts.inter(
              //     // fontFamily: 'Inter',
              //     fontSize: FontSizes.scale(context, 32),
              //     color: AppColors.text,
              //     fontWeight: FontWeight.w600,
              //     height: 1,
              //   ),
              // ),
              const SizedBox(height: 0),
              Text(
                description,
                style: AppTextStyles.bodyText,
                // overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width < 800 ? 20 : 50),
      child: Container(
        height: isDesktop ? 480 : null,
        constraints: BoxConstraints(maxWidth: 1280),
        child: isDesktop
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: imageLeft ? content : content.reversed.toList(),
              )
            : Column(
                children: [
                  NetworkImageWidget(
                    "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/About+us/Importance+of+Agrivoltaics.png",
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 30),
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "Importance of ",
                        style:
                            AppTextStyles.sectionTitle.copyWith(fontSize: 32),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          // Make the SVG responsive
                          LayoutBuilder(
                            builder: (context, constraints) {
                              return SvgPicture.asset(
                                'assets/icons/impofagri.svg',
                                width: 200, // adjust as needed
                                fit: BoxFit.contain,
                              );
                            },
                          ),
                          Text(
                            "Agrivoltics",
                            style: AppTextStyles.sectionTitle
                                .copyWith(fontSize: 32),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Text(
                  //   title,
                  //   style: AppTextStyles.sectionTitle.copyWith(fontSize: 32),
                  // ),
                  const SizedBox(height: 15),
                  Text(
                    description,
                    style: AppTextStyles.bodyText.copyWith(fontSize: 16),
                  ),
                ],
              ),
      ),
    );
  }
}
