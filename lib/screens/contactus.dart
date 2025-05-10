import 'package:agri_voltics/constants/text_styles.dart';
import 'package:agri_voltics/screens/contactus/contact_form.dart';
import 'package:agri_voltics/screens/contactus/contactusbanner.dart';
import 'package:agri_voltics/screens/solutions/agrivoltaics_info.dart';
import 'package:agri_voltics/screens/solutions/carbon_credits.dart';
import 'package:agri_voltics/screens/solutions/solutionsbanner.dart';
import 'package:agri_voltics/widgets/Navbar.dart';
import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/footer_widget.dart';

class Contactus extends StatelessWidget {
  const Contactus({Key? key}) : super(key: key);

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
              Contactusbanner(),
              SizedBox(
                height: 30,
              ),
              ContactForm(),
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
