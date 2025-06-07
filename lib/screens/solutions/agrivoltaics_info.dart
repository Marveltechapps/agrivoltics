import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_section.dart';

class AgrivoltaicsInfo extends StatelessWidget {
  const AgrivoltaicsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth <= 991;

    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        constraints: const BoxConstraints(
          minWidth: 240,
          maxWidth: 1280,
        ),
        child: !isTablet
            ? Wrap(
                spacing: 20,
                runSpacing: 40,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width > 1280
                        ? 1280 / 2.3
                        : MediaQuery.of(context).size.width / 2.3,
                    constraints: const BoxConstraints(
                      minWidth: 360,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Agrivoltaics – Powering the Future with Energy and Food',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: isTablet ? 40 : 30,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF0F172A),
                            height: isTablet ? 1.25 : 1.13,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Agrivoltaics offers a cutting-edge solution that merges agriculture and solar energy production, transforming land use for maximum efficiency. This dual-purpose approach allows you to generate renewable power while growing crops, ensuring sustainable benefits for both energy and food supply chains.',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF12141D),
                            height: 1.6,
                          ),
                        ),
                        SizedBox(height: isTablet ? 20 : 20),
                        DetailSection(
                          imageSrc:
                              '''<svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
<circle cx="28.0002" cy="27.8088" r="27.8088" fill="#008EFF"/>
<path d="M22.4386 19.7758V16.068C22.4386 15.3854 22.992 14.832 23.6746 14.832H38.5059C39.1885 14.832 39.7419 15.3854 39.7419 16.068V33.3712C39.7419 34.0538 39.1885 34.6071 38.5059 34.6071H34.7981V38.3139C34.7981 38.9971 34.242 39.5509 33.5537 39.5509H18.7393C18.052 39.5509 17.4951 39.0014 17.4951 38.3139L17.4983 21.0128C17.4985 20.3297 18.0546 19.7758 18.7427 19.7758H22.4386ZM19.97 22.2477L19.9672 37.079H32.3262V22.2477H19.97ZM24.9105 19.7758H34.7981V32.1353H37.27V17.3039H24.9105V19.7758ZM22.4389 25.9555H29.8546V28.4274H22.4389V25.9555ZM22.4389 30.8993H29.8546V33.3712H22.4389V30.8993Z" fill="white"/>
</svg>
''',
                          title: 'Power',
                          description:
                              'With our advanced agrivoltaic installations, we offer homes, industries, and enterprises access to clean and renewable energy. Solar panels mounted above agricultural fields or rooftops provide reliable energy without compromising land for farming. Our solution reduces dependency on fossil fuels, slashes electricity costs, and enhances energy independence.',
                          benefits: [
                            'Reduced energy bills with sustainable power',
                            'Solar energy solutions for homes, industries, and large enterprises',
                            'Long-term savings and protection from rising energy prices',
                          ],
                        ),
                        SizedBox(height: isTablet ? 20 : 20),
                        DetailSection(
                          imageSrc:
                              '''<svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
<circle cx="28.0002" cy="27.8088" r="27.8088" fill="#2F872D"/>
<path d="M39.7412 22.2477V38.3066C39.7412 38.9949 39.1914 39.5509 38.5134 39.5509H18.7219C18.0441 39.5509 17.4941 39.0022 17.4941 38.3251V16.0578C17.4941 15.3948 18.0487 14.832 18.7328 14.832H32.3215L39.7412 22.2477ZM37.2693 23.4836H31.0895V17.3039H19.966V37.079H37.2693V23.4836ZM23.6739 21.0118H27.3817V23.4836H23.6739V21.0118ZM23.6739 25.9555H33.5614V28.4274H23.6739V25.9555ZM23.6739 30.8993H33.5614V33.3712H23.6739V30.8993Z" fill="white"/>
</svg>
''',
                          title: 'Food',
                          description:
                              'Agrivoltaics supports farming beneath solar panels, creating a microclimate that enhances crop growth. With better water retention and reduced soil erosion, this approach ensures healthy yields even under challenging weather conditions. Our focus on sustainable farming guarantees food security while conserving resources.',
                          benefits: [
                            'Higher crop yields through sustainable practices',
                            'Efficient land use combining food and energy production',
                            'Support for local farmers and agricultural communities',
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.3,
                    constraints: BoxConstraints(
                      minWidth: 360,
                      maxWidth: isTablet ? double.infinity : 600,
                      minHeight: 569,
                    ),
                    child: NetworkImageWidget(
                      "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Solutions/Agrivoltaics+%E2%80%93+Powering+the+Future+with+Energy+and+Food.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  spacing: 30,
                  // runSpacing: 40,
                  // alignment: WrapAlignment.center,
                  children: [
                    Container(
                      constraints: const BoxConstraints(
                          // minWidth: 360,
                          ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Agrivoltaics – Powering the Future with Energy and Food',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: isTablet ? 26 : 30,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF0F172A),
                              height: isTablet ? 1.25 : 1.13,
                            ),
                          ),
                          const SizedBox(height: 39),
                          Text(
                            'Agrivoltaics offers a cutting-edge solution that merges agriculture and solar energy production, transforming land use for maximum efficiency. This dual-purpose approach allows you to generate renewable power while growing crops, ensuring sustainable benefits for both energy and food supply chains.',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF12141D),
                              height: 1.6,
                            ),
                          ),
                          SizedBox(height: isTablet ? 40 : 60),
                          DetailSection(
                            imageSrc:
                                '''<svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
<circle cx="28.0002" cy="27.8088" r="27.8088" fill="#008EFF"/>
<path d="M22.4386 19.7758V16.068C22.4386 15.3854 22.992 14.832 23.6746 14.832H38.5059C39.1885 14.832 39.7419 15.3854 39.7419 16.068V33.3712C39.7419 34.0538 39.1885 34.6071 38.5059 34.6071H34.7981V38.3139C34.7981 38.9971 34.242 39.5509 33.5537 39.5509H18.7393C18.052 39.5509 17.4951 39.0014 17.4951 38.3139L17.4983 21.0128C17.4985 20.3297 18.0546 19.7758 18.7427 19.7758H22.4386ZM19.97 22.2477L19.9672 37.079H32.3262V22.2477H19.97ZM24.9105 19.7758H34.7981V32.1353H37.27V17.3039H24.9105V19.7758ZM22.4389 25.9555H29.8546V28.4274H22.4389V25.9555ZM22.4389 30.8993H29.8546V33.3712H22.4389V30.8993Z" fill="white"/>
</svg>
''',
                            title: 'Power',
                            description:
                                'With our advanced agrivoltaic installations, we offer homes, industries, and enterprises access to clean and renewable energy. Solar panels mounted above agricultural fields or rooftops provide reliable energy without compromising land for farming. Our solution reduces dependency on fossil fuels, slashes electricity costs, and enhances energy independence.',
                            benefits: [
                              'Reduced energy bills with sustainable power',
                              'Solar energy solutions for homes, industries, and large enterprises',
                              'Long-term savings and protection from rising energy prices',
                            ],
                          ),
                          SizedBox(height: isTablet ? 40 : 48),
                          DetailSection(
                            imageSrc:
                                '''<svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
<circle cx="28.0002" cy="27.8088" r="27.8088" fill="#2F872D"/>
<path d="M39.7412 22.2477V38.3066C39.7412 38.9949 39.1914 39.5509 38.5134 39.5509H18.7219C18.0441 39.5509 17.4941 39.0022 17.4941 38.3251V16.0578C17.4941 15.3948 18.0487 14.832 18.7328 14.832H32.3215L39.7412 22.2477ZM37.2693 23.4836H31.0895V17.3039H19.966V37.079H37.2693V23.4836ZM23.6739 21.0118H27.3817V23.4836H23.6739V21.0118ZM23.6739 25.9555H33.5614V28.4274H23.6739V25.9555ZM23.6739 30.8993H33.5614V33.3712H23.6739V30.8993Z" fill="white"/>
</svg>
''',
                            title: 'Food',
                            description:
                                'Agrivoltaics supports farming beneath solar panels, creating a microclimate that enhances crop growth. With better water retention and reduced soil erosion, this approach ensures healthy yields even under challenging weather conditions. Our focus on sustainable farming guarantees food security while conserving resources.',
                            benefits: [
                              'Higher crop yields through sustainable practices',
                              'Efficient land use combining food and energy production',
                              'Support for local farmers and agricultural communities',
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        minWidth: 360,
                        maxWidth: isTablet ? double.infinity : 600,
                        minHeight: 569,
                      ),
                      child: NetworkImageWidget(
                        "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Solutions/Agrivoltaics+%E2%80%93+Powering+the+Future+with+Energy+and+Food.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
