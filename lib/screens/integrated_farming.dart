import 'package:agri_voltics/screens/home_screen_component_2.dart';
import 'package:agri_voltics/screens/home_screen_component_3.dart';
import 'package:agri_voltics/screens/home_screen_component_4.dart';
import 'package:agri_voltics/screens/integratedfarm/content_section.dart';
import 'package:agri_voltics/screens/integratedfarm/input_design.dart';
import 'package:agri_voltics/screens/integratedfarm/integrated_animal_husbandry.dart';
import 'package:agri_voltics/screens/integratedfarm/integratedformscreen.dart';
import 'package:agri_voltics/screens/integratedfarm/sheep_farming.dart';
import 'package:agri_voltics/screens/integratedfarm/sustainable_section.dart';
import 'package:agri_voltics/widgets/Navbar.dart';
import 'package:agri_voltics/widgets/faq_sections.dart';
import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/content_section_widget.dart';
import '../widgets/footer_widget.dart';
import 'package:agri_voltics/constants/text_styles.dart';

class IntegratedFarming extends StatelessWidget {
  const IntegratedFarming({Key? key}) : super(key: key);

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
              Integratedformscreen(),
              InputDesign3(),
              SustainableSection(),
              SizedBox(
                height: 30,
              ),
              IntegratedAnimalHusbandry(),
              SizedBox(
                height: 30,
              ),
              SheepFarming(),
              ContentSection(),
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/elements/Full-widthimage-screen4.png",
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 50,
              ),
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
                  "Integrated Farming with a Purpose & Building Sustainable Future ",
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
