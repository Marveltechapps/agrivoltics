import 'package:agri_voltics/constants/text_styles.dart';
import 'package:agri_voltics/screens/solutions/agrivoltaics_info.dart';
import 'package:agri_voltics/screens/solutions/carbon_credits.dart';
import 'package:agri_voltics/screens/solutions/solutionsbanner.dart';
import 'package:agri_voltics/widgets/Navbar.dart';
import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/footer_widget.dart';

class Solutions extends StatelessWidget {
  const Solutions({Key? key}) : super(key: key);

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
              Solutionsbanner(),
              SizedBox(
                height: 30,
              ),
              AgrivoltaicsInfo(),
              SizedBox(
                height: 30,
              ),
              CarbonCredits(),
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
                  "With our tailor solution Let’s save the next generation ",
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
