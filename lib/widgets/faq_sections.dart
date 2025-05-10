import 'package:flutter/material.dart';
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
            children: [
              // Left Image
              isDesktop
                  ? Container(
                      constraints: BoxConstraints(
                          // minWidth: 360,
                          // minHeight: 568,
                          ),
                      child: Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/5bb9ec0ddc694180866d16d2821242dc0d0df33c?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
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
                    Text(
                      'Curious about us or our solar farms? Click here to discover answers to common questions about our solar projects, along with facts, videos, and more insights!',
                      style: AppTextStyles.faqDescription,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 35),
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: isDesktop ? 20 : 15,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(123, 149, 64, 1),
                          borderRadius: BorderRadius.circular(368),
                        ),
                        child: Text(
                          'Get started',
                          style: AppTextStyles.buttonText,
                          textAlign: TextAlign.center,
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
                      child: Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/aac2b69d7494e0fc8c580d9588897e2ac35b52b3?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371',
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
