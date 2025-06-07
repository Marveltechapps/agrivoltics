import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'faq_item.dart';
import './constants/colors.dart';

class FAQSection extends StatelessWidget {
  const FAQSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double padding = _getPadding(constraints.maxWidth);
        double fontSize = _getFontSize(constraints.maxWidth);

        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            vertical: padding,
            horizontal: 0,
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1280),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: constraints.maxWidth <= 640 ? 24 : 32),
                    child: Text(
                      'Frequently asking question',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: fontSize,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 4, 8, 13),
                        height: fontSize / (fontSize * 0.88),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      FAQItem(
                        question: 'What is agrivoltaics?',
                        answer:
                            'Agrivoltaics is the combined use of land for both agriculture and solar power generation, where solar panels are installed above crops, allowing farming and energy production to coexist on the same land',
                      ),
                      FAQItem(
                        question:
                            'How does agrivoltaics benefit Indian agriculture?',
                        answer:
                            'It provides climate resilience by protecting crops from extreme weather, diversifies farmer income through solar power sales and lease payments, and optimizes land use by producing both food and energy on the same land area',
                      ),
                      FAQItem(
                        question:
                            'Which crops are suitable for agrivoltaic systems?',
                        answer:
                            'Crops that tolerate partial shading perform well, such as tomatoes, chillies, grapes, and certain vegetables. Crop compatibility depends on sunlight requirements and local conditions',
                      ),
                      FAQItem(
                        question: 'Where can agrivoltaics be implemented?',
                        answer:
                            'Agrivoltaics can be applied on new solar farms, existing farmland, vineyards, orchards, and even small-scale farms or community gardens. It is scalable from industrial to family farms',
                      ),
                      FAQItem(
                        question:
                            'How does agrivoltaics help with India\'s renewable energy goals?',
                        answer:
                            'Agrivoltaics supports India\'s goal of expanding solar capacity by enabling dual land use, thus avoiding competition between agriculture and energy production while contributing to sustainable development',
                      ),
                      FAQItem(
                        question:
                            'What government support or policies exist for agrivoltaics in India?',
                        answer:
                            'Programs like PM-KUSUM promote decentralized solar power for farmers, and recent guidelines and alliances support agrivoltaics adoption through policy recommendations and business models',
                      ),
                      FAQItem(
                        question:
                            'How can farmers benefit financially from agrivoltaics?',
                        answer:
                            'Farmers can earn from power generation sales, lease payments from solar developers, potential carbon credits, and improved crop yields due to better microclimate conditions under solar panels',
                      ),
                      FAQItem(
                        question:
                            'How does agrivoltaics contribute to sustainability?',
                        answer:
                            'It reduces water usage, increases land-use efficiency, lowers carbon emissions by generating clean energy, and helps build climate-resilient agriculture, supporting multiple Sustainable Development Goals',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  double _getPadding(double width) {
    if (width <= 640) return 20;
    if (width <= 991) return 25;
    return 30;
  }

  double _getFontSize(double width) {
    if (width <= 640) return 32;
    if (width <= 991) return 40;
    return 45;
  }
}
