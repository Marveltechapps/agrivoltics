import 'package:flutter/material.dart';

class LandPartnershipBanner extends StatelessWidget {
  const LandPartnershipBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;

    // Calculate responsive font size
    double getFontSize() {
      if (screenSize.width <= 640) {
        return 48.0;
      } else if (screenSize.width <= 991) {
        return 80.0;
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

    return SizedBox(
      width: double.infinity,
      height: 500,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/3285c792e7f799a8e0907bb83189983e888b3856',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Colors.grey[300],
                child: const Center(
                  child: Icon(Icons.error_outline),
                ),
              );
            },
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Container(
                color: Colors.grey[300],
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),

          // Gradient Overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.black.withOpacity(0.20),
                  Colors.black.withOpacity(0.00),
                ],
                stops: const [0.1946, 0.40],
              ),
            ),
          ),

          // Text Content
          Positioned(
            top: 230,
            left: screenSize.width <= 640 ? 20 : 161,
            child: Text(
              'Land partnership',
              style: TextStyle(
                color: Colors.white,
                fontSize: getFontSize() * textScaleFactor,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: getLineHeight() /
                    getFontSize(), // Convert line-height to Flutter's height multiplier
                letterSpacing: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
