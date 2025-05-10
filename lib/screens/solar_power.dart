import 'package:agri_voltics/screens/solarpower/clean_energy_section.dart';
import 'package:agri_voltics/screens/solarpower/inputdesign.dart';
import 'package:agri_voltics/screens/solarpower/power_generation_section.dart';
import 'package:agri_voltics/screens/solarpower/solarpowerinfo.dart';
import 'package:agri_voltics/screens/solarpower/solarpowerscreen.dart';
import 'package:agri_voltics/screens/solarpower/solarpowersection1.dart';
import 'package:agri_voltics/widgets/Navbar.dart';
import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/footer_widget.dart';
import 'package:agri_voltics/constants/text_styles.dart';

class SolarPower extends StatelessWidget {
  const SolarPower({Key? key}) : super(key: key);

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
              Solarpowerscreen(),
              SizedBox(
                height: 50,
              ),
              SolarPowerSection(),
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/elements/Full-widthimage-screen3.png",
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 50,
              ),
              SolarPowerInfo(),
              SizedBox(
                height: 50,
              ),
              InputDesign2(),
              CleanEnergySection(),
              PowerGenerationSection(),
              SizedBox(
                height: 30,
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
                  "Sustainability from Sun to Soil, Empowering a Greener Future Together ",
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
