import 'package:agri_voltics/screens/home_screen_component_2.dart';
import 'package:agri_voltics/screens/home_screen_component_3.dart';
import 'package:agri_voltics/screens/home_screen_component_4.dart';
import 'package:agri_voltics/screens/termsandconditions/termstext.dart';
import 'package:agri_voltics/widgets/Navbar.dart';
import 'package:agri_voltics/widgets/faq_sections.dart';
import 'package:agri_voltics/widgets/mainbanner.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/styles.dart';
import '../widgets/header_widget.dart';
import '../widgets/content_section_widget.dart';
import '../widgets/footer_widget.dart';

class Termsandconditions extends StatelessWidget {
  const Termsandconditions({Key? key}) : super(key: key);

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
                    // Image.network(
                    //   'https://cdn.builder.io/api/v1/image/assets/TEMP/a088d772672812248d9b2098385dbb4cdf69eaa8?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                    //   width: double.infinity,
                    //   fit: BoxFit.contain,
                    // ),
                    Mainbanner(
                        imageUrl:
                            'https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/About+us/about_us.png',
                        // 'https://cdn.builder.io/api/v1/image/assets/TEMP/a088d772672812248d9b2098385dbb4cdf69eaa8?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                        name: 'Terms & Conditions'),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: isMobile ? 20 : 60, vertical: 50),
                      child: TermsOfServiceScreen(),
                    ),
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
