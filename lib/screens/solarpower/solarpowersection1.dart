import 'package:agri_voltics/screens/solarpower/constants/colors.dart';
import 'package:agri_voltics/screens/solarpower/constants/text_styles.dart';
import 'package:flutter/material.dart';

class SolarPowerSection extends StatelessWidget {
  const SolarPowerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 991;
        final isMobile = constraints.maxWidth <= 640;

        return Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: isDesktop
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: isDesktop ? 30 : (isMobile ? 24 : 20),
                    // runSpacing: isDesktop ? 80 : (isMobile ? 24 : 40),
                    // alignment: WrapAlignment.center,
                    children: [
                      _buildTextSection(isMobile, isDesktop, constraints),
                      _buildImagesSection(constraints, isMobile, isDesktop),
                    ],
                  )
                : Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: isDesktop
                            ? MediaQuery.of(context).size.width * 0.1
                            : MediaQuery.of(context).size.width * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: isDesktop ? 50 : (isMobile ? 10 : 20),
                      // runSpacing: isDesktop ? 80 : (isMobile ? 24 : 40),
                      // alignment: WrapAlignment.center,
                      children: [
                        _buildTextSection(isMobile, isDesktop, constraints),
                        _buildImagesSection(constraints, isMobile, isDesktop),
                      ],
                    ),
                  ),
          ),
        );
      },
    );
  }

  Widget _buildTextSection(
      bool isMobile, bool isDesktop, BoxConstraints constraints) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 360,
        maxWidth: isDesktop ? constraints.maxWidth / 2.4 : double.infinity,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24.98),
          Text(
            'Harnessing the Sun for a Sustainable Future',
            style: AppTextStyles.title(
              fontSize: isDesktop ? 30 : (isMobile ? 25 : 28),
            ),
          ),
          const SizedBox(height: 24.98),
          Text(
            'Solar power generation converts sunlight into electricity using '
            'photovoltaic (PV) cells, reducing reliance on fossil fuels and '
            'lowering greenhouse gas emissions. Panels can be installed on '
            'solar farms, making solar energy increasingly accessible. As '
            'technology improves and costs decline, it offers significant '
            'savings on energy bills and promotes energy independence. '
            'Investing in solar power supports a sustainable future while '
            'creating jobs in the renewable energy sector.',
            style: AppTextStyles.body1(
              fontSize: isDesktop ? 16 : (isMobile ? 12 : 14),
            ),
          ),
          const SizedBox(height: 24.241),
        ],
      ),
    );
  }

  Widget _buildImagesSection(
      BoxConstraints constraints, bool isMobile, bool isDesktop) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: isDesktop ? 360 : constraints.maxWidth,
      ),
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        alignment: WrapAlignment.spaceEvenly,
        children: [
          _buildGreenCard(constraints, isMobile),
          _buildLargeImage(constraints, isMobile),
        ],
      ),
    );
  }

  Widget _buildGreenCard(BoxConstraints constraints, bool isMobile) {
    return Container(
      width: isMobile
          ? constraints.maxWidth
          : constraints.maxWidth < 991
              ? constraints.maxWidth / 3
              : constraints.maxWidth / 4,
      height: 500,
      constraints: BoxConstraints(
        maxWidth: constraints.maxWidth,
      ),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.green,
        borderRadius: BorderRadius.circular(36),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(37.469),
            child: Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/b89331213177d64ef72b7934c24bc93ea2bfb992',
              width: double.infinity,
              height: isMobile ? 250 : 260,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 14),
          Text(
            'Solar panels',
            style: AppTextStyles.cardTitle,
          ),
          const SizedBox(height: 7.494),
          Text(
            'Solar power captures the energy of the sun and converts it into '
            'electricity, providing an eco-friendly and renewable alternative '
            'to fossil fuels.',
            style: AppTextStyles.cardBody,
          ),
        ],
      ),
    );
  }

  Widget _buildLargeImage(BoxConstraints constraints, bool isMobile) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(37.469),
      child: Image.network(
        'https://cdn.builder.io/api/v1/image/assets/TEMP/8faa163809485d33dec92f6e74812de24e5eb19c',
        width: isMobile
            ? constraints.maxWidth
            : constraints.maxWidth < 991
                ? constraints.maxWidth / 3
                : constraints.maxWidth / 4,
        height: isMobile ? 300 : 500,
        fit: BoxFit.cover,
      ),
    );
  }
}
