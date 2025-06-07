import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mainbanner extends StatefulWidget {
  final String imageUrl;
  final String name;
  const Mainbanner({Key? key, required this.imageUrl, required this.name})
      : super(key: key);

  @override
  State<Mainbanner> createState() => _MainbannerState();
}

class _MainbannerState extends State<Mainbanner> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;

    // Calculate responsive font size
    double getFontSize() {
      if (screenSize.width <= 640) {
        return 38.0;
      } else if (screenSize.width <= 991) {
        return 72.0;
      }
      return 90.0;
    }

    // Calculate responsive line height
    double getLineHeight() {
      if (screenSize.width <= 640) {
        return 43.2;
      } else if (screenSize.width <= 991) {
        return 72.0;
      }
      return 100.8;
    }

    return AspectRatio(
      aspectRatio: 16 / 9,
      // width: double.infinity,
      // height: 500,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Positioned.fill(
            child: NetworkImageWidget(
              widget.imageUrl,
              fit: BoxFit.fitHeight,
              // errorBuilder: (context, error, stackTrace) {
              //   return Container(
              //     color: Colors.grey[300],
              //     child: const Center(
              //       child: Icon(Icons.error_outline),
              //     ),
              //   );
              // },
              // loadingBuilder: (context, child, loadingProgress) {
              //   if (loadingProgress == null) return child;
              //   return Container(
              //     color: Colors.grey[300],
              //     child: const Center(
              //       child: CircularProgressIndicator(),
              //     ),
              //   );
              // },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.black.withOpacity(0.30),
                  Colors.black.withOpacity(0.0),
                ],
                // stops: const [0.1946, 5.40],
              ),
            ),
          ),
          // Text Content
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Text(
                widget.name,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: getFontSize() * textScaleFactor - 8,
                  fontWeight: FontWeight.w700,
                  height: getLineHeight() /
                      getFontSize(), // Convert line-height to Flutter's height multiplier
                  letterSpacing: 0,
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
