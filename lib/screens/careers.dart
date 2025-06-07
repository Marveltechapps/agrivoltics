
import 'package:agri_voltics/screens/careers/current_opening.dart';
import 'package:agri_voltics/screens/careers/profile_form_container.dart';
import 'package:agri_voltics/screens/careers/work_with_us_section.dart';
import 'package:agri_voltics/widgets/Navbar.dart';
import 'package:agri_voltics/widgets/mainbanner.dart';
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
              // Careersbanner(),
              Mainbanner(
                  imageUrl:
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/3807350b8d0c87a2f101b5eb1b3a7df12cce8718?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                  name: 'Careers'),
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
