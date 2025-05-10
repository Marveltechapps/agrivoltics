import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Wrap(
            spacing: 40,
            runSpacing: 40,
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                constraints: BoxConstraints(
                  minWidth: 380,
                  minHeight: 334,
                ),
                width: isTablet
                    ? constraints.maxWidth
                    : MediaQuery.of(context).size.width / 2.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/29bd0c1bfb5bfb79ee5de5488021f147b3175a73?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                constraints: const BoxConstraints(
                  minWidth: 360,
                ),
                width: isTablet
                    ? constraints.maxWidth
                    : MediaQuery.of(context).size.width / 2.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What We Offer',
                      style: TextStyle(
                        color: const Color(0xFF0F172A),
                        fontSize: isTablet ? 30 : 35,
                        height: 1,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: isTablet ? 20 : 20),
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
            ],
          ),
        );
      },
    );
  }
}
