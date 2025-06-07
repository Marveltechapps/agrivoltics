import 'package:agri_voltics/widgets/list_items.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionContainer2 extends StatelessWidget {
  const SectionContainer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 768;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: isDesktop ? 60 : 20),
          child: Container(
            constraints: BoxConstraints(maxWidth: 1280),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dual-Use Strategies: Enhancing Sustainability Through Agrivoltaics',
                  style: GoogleFonts.inter(
                    fontSize: isDesktop ? 45 : 30,
                    fontWeight: FontWeight.w600,
                    height: isDesktop ? 56 / 53 : 47 / 40,
                    color: const Color(0xFF333333),
                    // fontFamily: 'Inter',
                  ),
                ),
                SizedBox(height: isDesktop ? 25 : 10),
                Column(
                  children: [
                    ListItem(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/3b26108f1bb2ff2dbc8dca4978a1ad388004bb3c?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                      boldText: 'Dual-purpose land use',
                      text:
                          'The primary benefit is maximizing land use by growing crops underneath solar panels, allowing farmers to produce both food and electricity on the same plot.',
                    ),
                    ListItem(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/c3cffc66400fd5268106697b3f78e6442791b02b?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                      boldText: 'Microclimate modification',
                      text:
                          'The shade from panels can help regulate temperature and reduce water evaporation, potentially benefiting crops in hot climates.',
                    ),
                    ListItem(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/9c85149e2977b6a5c839d5e96ddc097dfbb7048e?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                      boldText: 'Panel design and installation',
                      text:
                          'Choosing the right panel height and configuration to optimize light penetration for crops while maximizing energy production.',
                    ),
                    ListItem(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/db4ca069cc711c4af400ce3a1ddc00c3ef58568c?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                      boldText: 'Crop rotation and management',
                      text:
                          'Selecting crops that can adapt to the shaded conditions and managing pests and diseases under the panels.',
                    ),
                    ListItem(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/d4cec8a6efd8f72d929d06b2f841738375cd72e4?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                      boldText: 'Water usage',
                      text:
                          'Monitoring and managing water requirements, considering potential impacts of reduced sunlight on evapotranspiration.',
                    ),
                    ListItem(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/73985048840f539c7a4b96a90ee92a5e3c6cab2e?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                      boldText: 'Environmental impact assessment',
                      text:
                          'Analyzing the overall environmental footprint of an agrivoltaic system, including the energy used to manufacture and install panels, and comparing it to conventional farming practices.',
                    ),
                    ListItem(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/662577b04e7e9a84455669775cb90e3916207f50?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                      boldText: 'Testing different crop combinations',
                      text:
                          'Studying which crops perform best under various panel configurations and environmental conditions.',
                    ),
                    ListItem(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/3891e7e5e8fae6833b234b5bced21c89d3faf829?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                      boldText: 'Impact on soil health',
                      text:
                          'Investigating how agrivoltaic systems may affect soil quality and microbial activity.',
                    ),
                    ListItem(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/5731ebc840dccba6dbda608dadf98d97e817c244?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                      boldText: 'Increased food security',
                      text:
                          'By utilizing existing agricultural land for renewable energy production, agrivoltaics can contribute to food production while addressing energy demands.',
                    ),
                    ListItem(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/f95dca4a45852ca4b20c4c32a24b24d0de852341?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                      boldText: 'Climate change mitigation',
                      text:
                          'Reduces reliance on fossil fuels by generating clean electricity and potentially mitigating the impacts of extreme weather events on crops',
                    ),
                    ListItem(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/ea02321969f4946e93f21652c1e8e3c722ff4fd4?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                      boldText: 'Economic diversification',
                      text:
                          'Provides farmers with a new revenue stream from selling electricity generated on their land',
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
