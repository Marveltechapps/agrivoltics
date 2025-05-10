import 'package:agri_voltics/screens/home_screen_component_2.dart';
import 'package:agri_voltics/screens/home_screen_component_3.dart';
import 'package:agri_voltics/screens/home_screen_component_4.dart';
import 'package:agri_voltics/widgets/Navbar.dart';
import 'package:agri_voltics/widgets/faq_sections.dart';
import 'package:flutter/material.dart';
import '../theme/styles.dart';
import '../widgets/header_widget.dart';
import '../widgets/content_section_widget.dart';
import '../widgets/footer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth <= 800;
      return Scaffold(
        drawer: isMobile ? MyDrawer() : null,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              Container(
                color: AppColors.background,
                child: Column(
                  children: [
                    Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/a088d772672812248d9b2098385dbb4cdf69eaa8?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.1,
                        vertical: 80,
                      ),
                      child: Text(
                        'Agrivoltaics- Solar Power Growing Energy and Food Together',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: AppColors.text,
                          fontWeight: FontWeight.w700,
                          fontSize: FontSizes.scale(context, 38),
                          height: 1.25,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    ContentSectionWidget(
                      title: 'Importance of Agrivoltaics',
                      description:
                          'Agrivoltaics plays a crucial role in maximizing land efficiency by enabling the simultaneous production of solar energy and agricultural crops. This dual-use approach supports sustainable energy generation while protecting crops from extreme weather conditions, improving yield, and reducing water evaporation. Farmers benefit economically by generating income from both agricultural products and solar power, promoting financial stability.\n\nAdditionally, agrivoltaics contributes to environmental conservation by enhancing soil health, conserving water, and supporting biodiversity. It also strengthens community resilience by fostering local food and energy production, reducing dependence on external resources, and promoting a greener, more sustainable future.',
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/32cfc6ff71bc171f6a4e501026f7c4fe7db39cbf?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                    ),
                    const SizedBox(height: 80),
                    CollaborativeVenturesSection(),
                    SectionContainer(),
                    SectionContainer2(),
                    FAQSection(),
                    const FooterWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildGreenSection() {
    return Container(
      color: AppColors.primary,
      padding: const EdgeInsets.symmetric(
        horizontal: 84,
        vertical: 43,
      ),
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 1280),
            child: Column(
              children: [
                Text(
                  'Collaborative Ventures for a Sustainable Future',
                  style: AppTextStyles.sectionTitle.copyWith(
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  'This initiative emphasizes the importance of strategic partnerships that drive innovation and sustainability. By fostering joint ventures, we leverage collective expertise and resources to restore and protect the land while boosting local economies. Our commitment to sustainable practices ensures that our efforts contribute to a healthier environment and a thriving community for generations to come.',
                  style: AppTextStyles.bodyText.copyWith(
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 42),
          // Add the rest of the green section content here
        ],
      ),
    );
  }

  Widget _buildDualUseSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            'Dual-Use Strategies: Enhancing Sustainability Through Agrivoltaics',
            style: AppTextStyles.sectionTitle,
          ),
          const SizedBox(height: 78),
          // Add the list of strategies here
        ],
      ),
    );
  }

  Widget _buildFaqSection() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/e864c247a20164345aa37471b7b7eb386c544919?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
            width: 386,
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Frequently\nasked Questions',
                  style: TextStyle(
                    fontSize: 66,
                    fontWeight: FontWeight.w500,
                    height: 1.09,
                  ),
                ),
                const SizedBox(height: 35),
                Text(
                  'Curious about us or our solar farms? Click here to discover answers to common questions about our solar projects, along with facts, videos, and more insights!',
                  style: AppTextStyles.bodyText,
                ),
                const SizedBox(height: 35),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(368),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 19,
                    ),
                  ),
                  child: Text(
                    'Get started',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/256ca28d4c0c16b291cb40699e3b4d1748a182ec?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
            width: 387,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
