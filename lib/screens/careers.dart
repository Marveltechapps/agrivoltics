import 'package:agri_voltics/constants/text_styles.dart';
import 'package:agri_voltics/screens/careers/careersbanner.dart';
import 'package:agri_voltics/screens/careers/current_opening.dart';
import 'package:agri_voltics/screens/careers/profile_form_container.dart';
import 'package:agri_voltics/screens/careers/work_with_us_section.dart';
import 'package:agri_voltics/screens/communities/communitiesbanner.dart';
import 'package:agri_voltics/screens/communities/input_design.dart';
import 'package:agri_voltics/screens/communities/offerings_sections.dart';
import 'package:agri_voltics/screens/communities/section2.dart';
import 'package:agri_voltics/screens/contactus/contact_form.dart';
import 'package:agri_voltics/screens/contactus/contactusbanner.dart';
import 'package:agri_voltics/widgets/Navbar.dart';
import 'package:agri_voltics/widgets/faq_sections.dart';
import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/footer_widget.dart';

class Careers extends StatelessWidget {
  const Careers({Key? key}) : super(key: key);

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
              Careersbanner(),
              SizedBox(
                height: 30,
              ),
              WorkWithUsSection(),
              SizedBox(
                height: 30,
              ),
              CurrentOpenings(),
              SizedBox(
                height: 30,
              ),
              ProfileFormContainer(),
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
