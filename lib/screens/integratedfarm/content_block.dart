import 'package:flutter/material.dart';

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
            maxWidth: isSmallScreen ? double.infinity : 630,
          ),
          child: Flexible(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius),
                    boxShadow: boxShadow != null ? [boxShadow!] : null,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(borderRadius),
                    child: Image.network(
                      imageUrl,
                      width: isSmallScreen
                          ? MediaQuery.of(context).size.width / 2
                          : MediaQuery.of(context).size.width / 4,
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                SizedBox(height: isSmallScreen ? 15 : 20),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: isSmallScreen ? 28 : 32,
                    fontWeight: FontWeight.w600,
                    height: title == 'Medicinal Plants' ? 3.0 : 2.0,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: isSmallScreen ? 18 : 20),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: isSmallScreen ? 18 : 20,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
