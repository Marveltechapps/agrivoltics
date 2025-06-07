import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../constants/text_styles.dart';

class FAQSection extends StatelessWidget {
  const FAQSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 991;

        return Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
            vertical: 35,
          ),
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceBetween,
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              // Left Image
              isDesktop
                  ? Container(
                      constraints: BoxConstraints(
                          // minWidth: 360,
                          // minHeight: 568,
                          ),
                      child: NetworkImageWidget(
                        'https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/About+us/FAQ+1.png',
                        width: MediaQuery.of(context).size.width / 4.4,
                        fit: BoxFit.fitWidth,
                      ),
                    )
                  : SizedBox(),

              // FAQ Content Section
              Container(
                width: isDesktop
                    ? MediaQuery.of(context).size.width / 2
                    : MediaQuery.of(context).size.width * 0.9,
                constraints: BoxConstraints(
                    // minWidth: 360,
                    // maxWidth: isDesktop ? 800 : double.infinity,
                    ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: isDesktop
                            ? AppTextStyles.faqTitle
                            : AppTextStyles.faqTitleMobile,
                        children: const [
                          TextSpan(text: 'Frequently\n'),
                          TextSpan(text: 'asked Questions '),
                        ],
                      ),
                    ),
                    const SizedBox(height: 35),
                    Container(
                      width: isDesktop ? 500 : null,
                      constraints: BoxConstraints(maxWidth: 1280),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Curious about us or our solar farms? Click here to discover answers to common questions about our solar projects, along with facts, videos, and more insights!',
                              style: AppTextStyles.faqDescription,
                              textAlign: TextAlign.center,
                              softWrap: true,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: isDesktop ? 35 : 20),
                    Center(
                      child: InkWell(
                        onTap: () {
                          GoRouter.of(context).push('/faq');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: isDesktop ? 20 : 15,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(123, 149, 64, 1),
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Text(
                            'Get started',
                            style: AppTextStyles.buttonText,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Right Image
              isDesktop
                  ? Container(
                      constraints: BoxConstraints(
                          // minWidth: 360,
                          // minHeight: 568,
                          ),
                      child: NetworkImageWidget(
                        'https://nextagri.s3.ap-south-1.amazonaws.com/Agrivoltaics/About+us/FAQ+2.png',
                        width: MediaQuery.of(context).size.width / 5,
                        fit: BoxFit.fitWidth,
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
