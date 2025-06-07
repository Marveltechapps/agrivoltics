import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentBlock extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final double imageAspectRatio;
  final double borderRadius;
  final BoxShadow? boxShadow;

  const ContentBlock({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.imageAspectRatio,
    this.borderRadius = 14.0,
    this.boxShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallScreen = MediaQuery.of(context).size.width <= 991;

        return Container(
          width: isSmallScreen
              ? MediaQuery.of(context).size.width / 2
              : MediaQuery.of(context).size.width / 4,
          constraints: BoxConstraints(
            minWidth: 360,
            maxWidth: isSmallScreen ? double.infinity : 420,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(isSmallScreen ? 5 : borderRadius),
                  boxShadow: boxShadow != null ? [boxShadow!] : null,
                ),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(isSmallScreen ? 5 : borderRadius),
                  child: NetworkImageWidget(
                    imageUrl,
                    width: isSmallScreen
                        ? MediaQuery.of(context).size.width / 2.5
                        : MediaQuery.of(context).size.width / 4,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(height: isSmallScreen ? 10 : 10),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: isSmallScreen ? 20 : 28,
                  fontWeight: FontWeight.w500,
                  height: title == 'Medicinal Plants' ||
                          title == 'Integrated Farming'
                      ? 1.2
                      : 2.0,
                  // fontFamily: 'Poppins',
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: isSmallScreen ? 5 : 10),
              Text(
                description,
                style: GoogleFonts.poppins(
                  fontSize: isSmallScreen ? 12 : 16,
                  fontWeight: FontWeight.w300,
                  // fontFamily: 'Poppins',
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
