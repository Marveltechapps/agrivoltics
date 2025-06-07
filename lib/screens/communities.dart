import 'package:agri_voltics/constants/text_styles.dart';
import 'package:agri_voltics/screens/communities/communitiesbanner.dart';
import 'package:agri_voltics/screens/communities/input_design.dart';
import 'package:agri_voltics/screens/communities/offerings_sections.dart';
import 'package:agri_voltics/screens/communities/section2.dart';
import 'package:agri_voltics/screens/contactus/contact_form.dart';
import 'package:agri_voltics/screens/contactus/contactusbanner.dart';
import 'package:agri_voltics/widgets/Navbar.dart';
import 'package:agri_voltics/widgets/faq_sections.dart';
import 'package:agri_voltics/widgets/mainbanner.dart';
import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/footer_widget.dart';

class Communities extends StatelessWidget {
  const Communities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 991;
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth <= 800;
      return Scaffold(
        drawer: isMobile ? MyDrawer() : null,
        backgroundColor: Color(0xfff3f8f2),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              // Communitiesbanner(),
              Mainbanner(
                  imageUrl:
                      'https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Communities/Communities.png',
                  name: 'Communities'),
              Section2(),
              SizedBox(
                height: 30,
              ),
              OfferingsSection(),
              SizedBox(
                height: isMobile ? 10 : 30,
              ),
              InputDesign8(),
              SizedBox(
                height: 30,
              ),
              FAQSection(),
              SizedBox(
                height: 20,
              ),
              FooterWidget()
            ],
          ),
        ),
      );
    });
  }
}
