import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'offering_item.dart';

class OfferingsSection extends StatelessWidget {
  const OfferingsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isTablet = constraints.maxWidth <= 991;
        final flexBasis = isTablet ? double.infinity : 0.0;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: isTablet ? 20 : 40.0 , vertical: 10),
          child: Wrap(
            spacing: 40,
            runSpacing: 20,
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                constraints: const BoxConstraints(
                  minWidth: 360,
                ),
                width: isTablet
                    ? constraints.maxWidth
                    : MediaQuery.of(context).size.width > 1280
                        ? 1280 / 2.3
                        : MediaQuery.of(context).size.width / 2.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What We Offer',
                      style: GoogleFonts.plusJakartaSans(
                        color: const Color(0xFF0F172A),
                        fontSize: isTablet ? 25 : 35,
                        height: 1,
                        // fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: isTablet ? 10 : 20),
                    OfferingItem(
                      imageUrl: 'assets/icons/page2-1.svg',
                      title: 'Engaging Discussions',
                      description:
                          'Connect with like-minded individuals in our forums to discuss best practices, share experiences, and ask questions about agrivoltaic systems and sustainable farming.',
                    ),
                    OfferingItem(
                      imageUrl: 'assets/icons/page2-2.svg',
                      title: 'Events & Workshops',
                      description:
                          'Stay updated on upcoming events, workshops, and webinars designed to enhance your understanding of agrivoltaics. Join us to learn from experts and share your insights!',
                    ),
                    OfferingItem(
                      imageUrl: 'assets/icons/page2-3.svg',
                      title: 'Resource Hub',
                      description:
                          'Access a wealth of educational materials, research articles, and guides focused on agrivoltaic practices. Equip yourself with the knowledge needed to thrive in this exciting field.',
                    ),
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  minWidth: 380,
                  minHeight: 334,
                ),
                width: isTablet
                    ? constraints.maxWidth
                    : MediaQuery.of(context).size.width > 1280
                        ? 1280 / 2.9
                        : MediaQuery.of(context).size.width / 2.9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: NetworkImageWidget(
                    'https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Communities/What+We+Offer.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
