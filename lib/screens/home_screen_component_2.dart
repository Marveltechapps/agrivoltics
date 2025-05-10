import 'package:flutter/material.dart';

class CollaborativeVenturesSection extends StatelessWidget {
  const CollaborativeVenturesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;

        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 20 : 80,
            vertical: 44,
          ),
          color: const Color(0xFF7B9540), // stone-500
          child: Column(
            children: [
              // Top text section
              Container(
                constraints: const BoxConstraints(maxWidth: 1280),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Collaborative Ventures for a Sustainable Future',
                        style: TextStyle(
                          fontSize: isMobile ? 32 : 45,
                          fontWeight: FontWeight.w500,
                          height: 1,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'This initiative emphasizes the importance of strategic partnerships that drive innovation and sustainability. By fostering joint ventures, we leverage collective expertise and resources to restore and protect the land while boosting local economies. Our commitment to sustainable practices ensures that our efforts contribute to a healthier environment and a thriving community for generations to come.',
                        style: TextStyle(
                          fontSize: isMobile ? 16 : 20,
                          height: 1.33,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 44),

              // First image and text section
              Container(
                constraints: BoxConstraints(maxWidth: 1560),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                      width: isMobile
                          ? MediaQuery.of(context).size.width * 0.9
                          : MediaQuery.of(context).size.width / 2.5,
                      height: isMobile ? null : 500,
                      constraints: BoxConstraints(
                        maxWidth: 720,
                        minWidth: 360,
                        minHeight: 242,
                      ),
                      child: Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/467940fa585db2ea81f96e66080928de1eace4e6?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                        fit: isMobile ? BoxFit.contain : BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: isMobile
                          ? MediaQuery.of(context).size.width * 0.9
                          : MediaQuery.of(context).size.width / 2.5,
                      height: isMobile ? null : 500,
                      constraints: const BoxConstraints(
                        maxWidth: 720,
                        minWidth: 360,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 0,
                      ),
                      color: const Color(0xFFF7FEE7), // lime-100
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'We buy Land or Make joint Venture',
                            style: TextStyle(
                              fontSize: isMobile ? 22 : 24,
                              fontWeight: FontWeight.w500,
                              height: 1.2,
                              color: Color(0xFF262626), // neutral-800
                            ),
                          ),
                          const SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: isMobile ? 16 : 18,
                                    height: 1.4,
                                    color: Color(0xFF262626),
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          '• Land ventures provide multiple pathways for implementing agrivoltaics through ',
                                    ),
                                    TextSpan(
                                      text:
                                          'outright purchase and joint ventures',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    TextSpan(text: '.\n\n'),
                                    TextSpan(
                                      text:
                                          '• Outright purchase offers full control of the land, ensuring long-term integration of solar and agricultural systems. Joint ventures enable collaboration with landowners, expanding opportunities for large-scale agrivoltaic installations.\n\n',
                                    ),
                                    TextSpan(
                                      text:
                                          '• Each approach supports sustainable development by combining energy production with agriculture, driving both environmental and economic benefits.',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          isMobile
                              ? SizedBox(
                                  height: 30,
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Second text and image section
              Container(
                constraints: const BoxConstraints(maxWidth: 1560),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                      width: isMobile
                          ? MediaQuery.of(context).size.width * 0.9
                          : MediaQuery.of(context).size.width / 2.5,
                      height: isMobile ? null : 500,
                      constraints: const BoxConstraints(
                        maxWidth: 780,
                        minWidth: 360,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 0,
                      ),
                      color: const Color(0xFFF7FEE7), // lime-100
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Our Commitment to Sustainable Future',
                            style: TextStyle(
                              fontSize: isMobile ? 24 : 25,
                              fontWeight: FontWeight.w600,
                              height: 1.3,
                              color: Color(0xFF262626), // neutral-800
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Our mission prioritizes harnessing solar energy through agrivoltaics, a sustainable practice that combines renewable energy production with agriculture. By integrating solar panels with farming, we optimize land use, reduce carbon emissions, and conserve water, all while preserving natural resources.\n\nThis approach promotes biodiversity, improves soil health, and supports responsible land management, leading to long-term environmental balance. Beyond ecological benefits, our initiatives drive local economic growth by creating jobs, supporting small businesses, and fostering community development—ensuring both environmental and economic sustainability for generations to come.',
                            style: TextStyle(
                              fontSize: isMobile ? 16 : 17,
                              height: 1.2,
                              color: Color(0xFF262626),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: isMobile
                          ? MediaQuery.of(context).size.width * 0.9
                          : MediaQuery.of(context).size.width / 2.5,
                      height: isMobile ? null : 500,
                      constraints: BoxConstraints(
                        maxWidth: 780,
                        minWidth: 360,
                      ),
                      child: Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/db6500528dbbac3b76484cf954c76215206335cc?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
                        fit: isMobile ? BoxFit.contain : BoxFit.cover,
                      ),
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
