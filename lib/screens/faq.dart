import 'package:agri_voltics/screens/faq/faq_section.dart';
import 'package:agri_voltics/screens/home_screen_component_2.dart';
import 'package:agri_voltics/screens/home_screen_component_3.dart';
import 'package:agri_voltics/screens/home_screen_component_4.dart';
import 'package:agri_voltics/screens/termsandconditions/termstext.dart';
import 'package:agri_voltics/widgets/Navbar.dart';
// import 'package:agri_voltics/widgets/faq_sections.dart';
import 'package:agri_voltics/widgets/mainbanner.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/styles.dart';
import '../widgets/header_widget.dart';
import '../widgets/content_section_widget.dart';
import '../widgets/footer_widget.dart';

class Faq extends StatelessWidget {
  const Faq({Key? key}) : super(key: key);

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
                        name: 'FAQ'),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: isMobile ? 20 : 60, vertical: 30),
                      child: FAQSection(),
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
}
