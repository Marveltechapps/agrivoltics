import 'package:agri_voltics/constants/text_styles.dart';
import 'package:agri_voltics/screens/home_screen_component_2.dart';
import 'package:agri_voltics/screens/home_screen_component_3.dart';
import 'package:agri_voltics/screens/home_screen_component_4.dart';
import 'package:agri_voltics/screens/landscreen/impactsection.dart';
import 'package:agri_voltics/screens/landscreen/inputdesign.dart';
import 'package:agri_voltics/screens/landscreen/landscreenbanner.dart';
import 'package:agri_voltics/screens/landscreen/partnerworksection.dart';
import 'package:agri_voltics/screens/landscreen/section5.dart';
import 'package:agri_voltics/widgets/Navbar.dart';
import 'package:agri_voltics/widgets/faq_sections.dart';
import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/content_section_widget.dart';
import '../widgets/footer_widget.dart';

class LandPartnership extends StatelessWidget {
  const LandPartnership({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 991;
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth <= 800;
      return Scaffold(
        drawer: isMobile ? MyDrawer() : null,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              LandPartnershipBanner(),
              InputDesign(),
              ImpactSection(),
              PartnerWorksSection(),
              Section5(),
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 1103,
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: isDesktop
                        ? MediaQuery.of(context).size.width * 0.05
                        : 20),
                child: Text(
                  "The Future of Land Use-solar power and Integrated farming ",
                  style: isDesktop
                      ? AppTextStyles.titleStyle
                      : AppTextStyles.titleStyleMobile,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              FooterWidget()
            ],
          ),
        ),
      );
    });
  }
}
