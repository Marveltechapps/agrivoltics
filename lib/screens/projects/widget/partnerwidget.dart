import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PartnersSection extends StatelessWidget {
  const PartnersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 991;
        final isTablet =
            constraints.maxWidth <= 991 && constraints.maxWidth > 640;
        final isMobile = constraints.maxWidth <= 640;

        return Container(
          constraints: BoxConstraints(maxWidth: 1280),
          width: double.infinity,
          // color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 20 : 60,
            vertical: 60,
          ),
          child: Column(
            children: [
              isMobile
                  ? SizedBox(
                      height: 0,
                    )
                  : SizedBox(),
              Text(
                'In collaboration with',
                style: GoogleFonts.inter(
                  color: const Color(0xFF222222),
                  // fontFamily: 'Inter',
                  fontSize: isDesktop
                      ? 70
                      : isTablet
                          ? 48
                          : 32,
                  fontWeight: FontWeight.w700,
                  height: isDesktop
                      ? 92 / 79
                      : isTablet
                          ? 56 / 48
                          : 40 / 32,
                  letterSpacing: isDesktop
                      ? -1.637
                      : isTablet
                          ? -1
                          : -0.5,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: isMobile ? 20 : 30),
              Container(
                constraints: const BoxConstraints(maxWidth: 1280),
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 10 : 20,
                  vertical: isMobile ? 10 : 20,
                ),
                child: isDesktop
                    ? Wrap(
                        runSpacing: 20,
                        alignment: WrapAlignment.spaceBetween,
                        children: [
                          _buildTNPDCLLogo(isDesktop, isTablet, isMobile),
                          _buildICARSection(isDesktop, isTablet, isMobile),
                        ],
                      )
                    : Column(
                        children: [
                          _buildTNPDCLLogo(isDesktop, isTablet, isMobile),
                          SizedBox(height: isMobile ? 20 : 30),
                          _buildICARSection(isDesktop, isTablet, isMobile),
                        ],
                      ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTNPDCLLogo(bool isDesktop, bool isTablet, bool isMobile) {
    return Image.network(
      'https://cdn.builder.io/api/v1/image/assets/TEMP/8dd701d7d4b95b1921cbdd7365a47ecccf9b4406?placeholderIfAbsent=true',
      width: isDesktop
          ? 533
          : isTablet
              ? 400
              : 280,
      height: isDesktop ? 67 : null,
      fit: BoxFit.contain,
    );
  }

  Widget _buildICARSection(bool isDesktop, bool isTablet, bool isMobile) {
    return isMobile
        ? Column(
            children: [
              _buildICARLogo(isMobile),
              const SizedBox(height: 12),
              _buildICARText(isDesktop, isTablet, isMobile),
            ],
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildICARLogo(isMobile),
              const SizedBox(width: 0),
              _buildICARText(isDesktop, isTablet, isMobile),
            ],
          );
  }

  Widget _buildICARLogo(bool isMobile) {
    return Image.network(
      'https://cdn.builder.io/api/v1/image/assets/TEMP/2537f595f6d2817c2b27974dd258325504386ab6?placeholderIfAbsent=true',
      width: isMobile ? 35 : 46,
      height: isMobile ? null : 63,
      fit: BoxFit.contain,
    );
  }

  Widget _buildICARText(bool isDesktop, bool isTablet, bool isMobile) {
    final double fontSize = isDesktop
        ? 16
        : isTablet
            ? 14
            : 12;
    final double lineHeight = isMobile ? 16 / 12 : 20 / 16;

    return Column(
      crossAxisAlignment: isTablet || isMobile
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          'भारतीय कृषि अनुसंधान परिषद',
          style: GoogleFonts.poppins(
            color: Colors.black,
            // fontFamily: 'Poppins',
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
            height: lineHeight,
          ),
          textAlign: isTablet || isMobile ? TextAlign.center : TextAlign.start,
        ),
        const SizedBox(height: 2.197),
        Text(
          'INDIAN COUNCIL OF AGRICULTURAL RESEARCH',
          style: GoogleFonts.poppins(
            color: Colors.black,
            // fontFamily: 'Poppins',
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
            height: lineHeight,
          ),
          textAlign: isTablet || isMobile ? TextAlign.center : TextAlign.start,
        ),
        const SizedBox(height: 2.197),
        Text(
          'Ministry of Agriculture and Farmers Welfare',
          style: GoogleFonts.poppins(
            color: Colors.black,
            // fontFamily: 'Poppins',
            fontSize: fontSize,
            fontWeight: FontWeight.w400,
            height: lineHeight,
          ),
          textAlign: isTablet || isMobile ? TextAlign.center : TextAlign.start,
        ),
      ],
    );
  }
}
