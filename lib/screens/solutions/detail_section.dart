import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailSection extends StatelessWidget {
  final String imageSrc;
  final String title;
  final String description;
  final List<String> benefits;

  const DetailSection({
    Key? key,
    required this.imageSrc,
    required this.title,
    required this.description,
    required this.benefits,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 360),
      child: MediaQuery.of(context).size.width <= 991
          ? Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.string(
                      imageSrc,
                      width: 56,
                      height: 56,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF0F172A),
                              height: 1.36,
                            ),
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  description,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0F172A),
                    height: 1.67,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'What we get:',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF0F172A),
                        height: 1.36,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                ...benefits
                    .map((benefit) => Padding(
                          padding: const EdgeInsets.only(left: 32, bottom: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('• ', style: TextStyle(fontSize: 18)),
                              Expanded(
                                child: Text(
                                  benefit,
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF0F172A),
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.string(
                  imageSrc,
                  width: 56,
                  height: 56,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 40),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0F172A),
                          height: 1.36,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        description,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0F172A),
                          height: 1.67,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'What we get:',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0F172A),
                          height: 1.36,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ...benefits
                          .map((benefit) => Padding(
                                padding:
                                    const EdgeInsets.only(left: 32, bottom: 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('• ',
                                        style: TextStyle(fontSize: 18)),
                                    Expanded(
                                      child: Text(
                                        benefit,
                                        style: GoogleFonts.plusJakartaSans(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF0F172A),
                                          height: 1.5,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                          .toList(),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
