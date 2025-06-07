import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import './constants/theme_constants.dart';
import 'package:dotted_border/dotted_border.dart';

class CleanEnergySection extends StatelessWidget {
  const CleanEnergySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(0),
      dashPattern: [6, 3],
      color: ThemeConstants.borderColor,
      strokeWidth: 2,
      child: Container(
        // constraints: BoxConstraints(maxWidth: 1280),
        width: MediaQuery.of(context).size.width,
        color: ThemeConstants.backgroundColor,
        child: Padding(
          padding: ThemeConstants.getSectionPadding(context),
          child: Container(
            width: 1280,
            constraints: BoxConstraints(maxWidth: 1280),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(),
            // width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildHeader(context),
                const SizedBox(height: 55),
                _buildContent(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1280),
      child: Column(
        children: [
          Text(
            'Our Contribution to Clean Energy',
            style: ThemeConstants.getTitleStyle(context),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 9),
          Text(
            'Our mission extends beyond providing renewable energy. We are '
            'dedicated to making a positive impact on the economy and the '
            'agricultural sector. By investing in solar power, we not only promote '
            'clean energy but also foster economic growth. Our solar projects '
            'create numerous job opportunities, driving local employment and '
            'boosting regional economies.',
            style: ThemeConstants.getSubtitleStyle(context),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 991) {
          return Column(
            children: [
              _buildTextContent(context),
              const SizedBox(height: 30),
              _buildImage(context),
            ],
          );
        }

        return Container(
          constraints: BoxConstraints(maxWidth: 1280),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: _buildTextContent(context)),
              const SizedBox(width: 0),
              Expanded(child: _buildImage(context)),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTextContent(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(0),
      dashPattern: [6, 3],
      color: ThemeConstants.borderColor,
      strokeWidth: 2,
      child: Container(
        height: MediaQuery.of(context).size.width > 991 ? 500 : null,
        decoration: BoxDecoration(
            // border: Border.all(
            //   color: ThemeConstants.borderColor,
            //   width: 1,
            //   style: BorderType.dased,
            // ),
            ),
        padding: ThemeConstants.getContentPadding(context),
        child: Column(
          children: [
            Text(
              'Solar Power to save the next generation',
              style: ThemeConstants.getTitleStyle2(context),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'We provide low-cost energy through this solutions that benefit the '
              'entire community.',
              style: ThemeConstants.getBodyTextStyle(context),
            ),
            const SizedBox(height: 15),
            Text(
              'Our commitment to clean energy empowers communities, advances '
              'economic stability, and paves the way for a more sustainable '
              'future.',
              style: ThemeConstants.getBodyTextStyle(context),
            ),
            const SizedBox(height: 15),
            Text(
              'We join a movement toward green energy, economic prosperity, and a '
              'healthier environment for all.',
              style: ThemeConstants.getBodyTextStyle(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    double height = MediaQuery.of(context).size.width > 991
        ? 505
        : MediaQuery.of(context).size.width > 640
            ? 400
            : 300;

    return NetworkImageWidget(
      "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Solar+power/Solar+Power+to+save+the+next+generation.png",
      height: height,
      width: double.infinity,
      fit: BoxFit.cover,
      // semanticLabel: 'Solar panels in a field',
    );
  }
}
