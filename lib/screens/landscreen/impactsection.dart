import 'package:agri_voltics/screens/landscreen/infocard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImpactSection extends StatelessWidget {
  const ImpactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 991;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Container(
              width: 1083,
              constraints: BoxConstraints(
                maxWidth: screenWidth,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    height: 35,
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFD02F),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: const Center(
                      child: Text(
                        'OUR IDEA STARTS HERE',
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          height: 1.75,
                          letterSpacing: -0.8,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    "Let's together create an impact",
                    style: GoogleFonts.inter(
                      color: const Color(0xFF222222),
                      fontSize: isDesktop ? 50 : 32,
                      fontWeight: FontWeight.w800,
                      height: 1,
                      letterSpacing: -0.8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.start,
              children: const [
                InfoCard(
                  title: 'Outright Purchase',
                  description:
                      'In this model, the buyer acquires complete ownership of the land by purchasing it outright. It provides full control over the property, allowing the owner to develop, resell, or lease it without restrictions. This is ideal for those seeking long-term investments and direct asset control.',
                ),
                InfoCard(
                  title: 'Joint Venture (JV)',
                  description:
                      "A joint venture involves collaboration between landowners and investors or developers to develop the land. Both parties share resources, risks, and profits, leveraging each other's expertise. This option is ideal for large-scale projects such as real estate developments or agricultural ventures, promoting shared growth and minimizing individual risk.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
