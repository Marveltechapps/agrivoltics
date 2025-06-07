import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class IntegratedAnimalHusbandry extends StatelessWidget {
  const IntegratedAnimalHusbandry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallScreen = constraints.maxWidth <= 991;

        return Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(
                      maxWidth: isSmallScreen ? double.infinity : 1280),
                  padding: EdgeInsets.symmetric(
                      horizontal: 20, vertical: isSmallScreen ? 0 : 30),
                  child: !isSmallScreen
                      ? Row(
                          spacing: 0,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // runSpacing: 51,
                          // alignment: WrapAlignment.start,
                          children: [
                            // Left Column
                            Container(
                              width: MediaQuery.of(context).size.width / 2.3,
                              constraints:
                                  BoxConstraints(minWidth: 360, maxWidth: 560),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Integrated Animal Husbandry',
                                    style: GoogleFonts.sora(
                                      fontSize: isSmallScreen ? 30 : 35,
                                      fontWeight: FontWeight.w800,
                                      height: isSmallScreen ? 0.0 : 1.2,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 11),
                                  Text(
                                    'stock for human use, and is a branch of agriculture. In agrivoltaics, animal husbandry can involve raising livestock under solar panels. Agrivoltaics is the practice of growing crops, raising livestock, or building pollinator habitats under solar panels.',
                                    style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      height: 1.38,
                                      color: Color(0xFF666666),
                                    ),
                                  ),
                                  const SizedBox(height: 34),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(33),
                                    child: NetworkImageWidget(
                                      "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Integrated+Farming/Integrated+Animal+Husbandry.png",
                                      fit: BoxFit.contain,
                                      width: MediaQuery.of(context).size.width /
                                          2.3,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Right Column
                            Container(
                              width: MediaQuery.of(context).size.width / 2.3,
                              constraints:
                                  BoxConstraints(minWidth: 240, maxWidth: 560),
                              child: Column(
                                children: [
                                  _buildIconContainer(
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/e663b21b476c01fe3704cbf543cb1e171c4b756c?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                                    'Increased pasture acres',
                                    'You can increase the amount of pasture acres without buying or renting additional land or fencing infrastructure.',
                                    isSmallScreen,
                                    topMargin: 0,
                                  ),
                                  _buildIconContainer(
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/a7226b4e3fdd9ef47a98cad23f952991187dcf70?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                                    'Improved livestock health',
                                    'Solar panels can provide shade for livestock during summer months and help decrease body temperatures.',
                                    isSmallScreen,
                                    topMargin: isSmallScreen ? 40 : 43,
                                  ),
                                  _buildIconContainer(
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/25c18bbcd778a02d969705404ab1fd12dea6b887?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                                    'Reduced carbon footprint',
                                    'Agrivoltaics can generate electrical energy for farmers while reducing the carbon footprint of the dairy operation.',
                                    isSmallScreen,
                                    topMargin: isSmallScreen ? 40 : 43,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Wrap(
                          spacing: 51,
                          runSpacing: 51,
                          alignment: WrapAlignment.center,
                          children: [
                            // Left Column
                            Container(
                              constraints: BoxConstraints(
                                minWidth: 360,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Integrated Animal Husbandry',
                                    style: GoogleFonts.sora(
                                      // fontFamily: 'Sora',
                                      fontSize: isSmallScreen ? 32 : 40,
                                      fontWeight: FontWeight.w700,
                                      height: isSmallScreen ? 1.2 : 92 / 56,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 11),
                                  Text(
                                    'stock for human use, and is a branch of agriculture. In agrivoltaics, animal husbandry can involve raising livestock under solar panels. Agrivoltaics is the practice of growing crops, raising livestock, or building pollinator habitats under solar panels.',
                                    style: GoogleFonts.sora(
                                      // fontFamily: 'Sora',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      height: 35 / 20,
                                      color: Color(0xFF666666),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: NetworkImageWidget(
                                      "https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/Integrated+Farming/Integrated+Animal+Husbandry.png",
                                      width: double.infinity,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Right Column
                            Container(
                              constraints: BoxConstraints(
                                minWidth: 240,
                              ),
                              child: Column(
                                children: [
                                  _buildIconContainer(
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/e663b21b476c01fe3704cbf543cb1e171c4b756c?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                                    'Increased pasture acres',
                                    'You can increase the amount of pasture acres without buying or renting additional land or fencing infrastructure.',
                                    isSmallScreen,
                                    topMargin: 0,
                                  ),
                                  _buildIconContainer(
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/a7226b4e3fdd9ef47a98cad23f952991187dcf70?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                                    'Improved livestock health',
                                    'Solar panels can provide shade for livestock during summer months and help decrease body temperatures.',
                                    isSmallScreen,
                                    topMargin: isSmallScreen ? 20 : 30,
                                  ),
                                  _buildIconContainer(
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/25c18bbcd778a02d969705404ab1fd12dea6b887?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                                    'Reduced carbon footprint',
                                    'Agrivoltaics can generate electrical energy for farmers while reducing the carbon footprint of the dairy operation.',
                                    isSmallScreen,
                                    topMargin: isSmallScreen ? 20 : 30,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildIconContainer(
    String imageUrl,
    String title,
    String description,
    bool isSmallScreen, {
    required double topMargin,
  }) {
    return Container(
      margin: EdgeInsets.only(top: topMargin),
      child: isSmallScreen
          ? Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.network(
                      imageUrl,
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        constraints: BoxConstraints(
                          minWidth: 360,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: GoogleFonts.sora(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                height: 1,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 0),
                Text(
                  description,
                  style: GoogleFonts.sora(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 33 / 18,
                    color: Color(0xFF666666),
                  ),
                ),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.network(
                  imageUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    constraints: BoxConstraints(
                      minWidth: 360,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.sora(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            height: 1,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          description,
                          style: GoogleFonts.sora(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            height: 33 / 18,
                            color: Color(0xFF666666),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
