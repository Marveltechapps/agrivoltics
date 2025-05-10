import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth <= 991;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30),
          child: Column(
            children: [
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: isMobile ? double.infinity : 1500.0,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Integrated Farming - Balancing Productivity and Sustainability',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sora(
                          fontSize: 32.0,
                          fontWeight: FontWeight.w700,
                          height: 1.5, // lineHeight / fontSize
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 11.0),
                      Text(
                        'Integrated farming systems prioritize the cultivation of a variety of '
                        'crops to enhance biodiversity, improve soil health, and maximize '
                        'productivity. This diversity helps create a balanced ecosystem. By '
                        'integrating multiple crops, farmers can optimize resource use and '
                        'ensure sustainable practices. Ultimately, integrated farming systems '
                        'contribute to increased food security and improved livelihoods for '
                        'farmers.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sora(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          height: 34.0 / 20.0, // lineHeight / fontSize
                          color: Color(0xFF666666),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: isMobile ? 40.0 : 49.0),
              AspectRatio(
                aspectRatio: 2.16,
                child: Image.network(
                  'https://cdn.builder.io/api/v1/image/assets/TEMP/a13da8ef8942f134944face4e88324981d4d8b0e?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
