import 'package:agri_voltics/screens/termsandconditions/theme/text_styles.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  TextStyle _getResponsiveHeaderStyle(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width <= 640) {
      return AppTextStyles.titleSmall;
    } else if (width <= 991) {
      return AppTextStyles.titleMedium;
    }
    return AppTextStyles.titleLarge;
  }

  TextStyle _getResponsiveBodyStyle(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width <= 640) {
      return AppTextStyles.bodySmall;
    } else if (width <= 991) {
      return AppTextStyles.bodyMedium;
    }
    return AppTextStyles.bodyLarge;
  }

  EdgeInsets _getResponsivePadding(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width <= 640) {
      return const EdgeInsets.symmetric(horizontal: 12);
    } else if (width <= 991) {
      return const EdgeInsets.symmetric(horizontal: 16);
    }
    return const EdgeInsets.symmetric(horizontal: 20);
  }

  Widget _buildSection(BuildContext context, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: _getResponsiveHeaderStyle(context),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width <= 640 ? 20 : 40,
            right: MediaQuery.of(context).size.width <= 640 ? 10 : 20,
          ),
          child: Text(
            content,
            style: _getResponsiveBodyStyle(context),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1280),
          child: Padding(
            padding: _getResponsivePadding(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Privacy Policy',
                      style: _getResponsiveHeaderStyle(context),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Effective Date: May 29, 2025',
                      style: _getResponsiveBodyStyle(context),
                    ),
                    const SizedBox(height: 22),
                    Text(
                      'Thank you for visiting our website dedicated to agrivoltaics projects in India. We are committed to protecting your privacy and handling your personal information responsibly and transparently. This Privacy Policy outlines how we collect, use, share, and protect your information in compliance with Indian law.',
                      style: _getResponsiveBodyStyle(context),
                    ),
                    // const SizedBox(height: 22),
                    // Text(
                    //   'By accessing or using the Website, you agree to be bound by these Terms. If you disagree with any part of the Terms, then you do not have our permission to access or use the Website.',
                    //   style: _getResponsiveBodyStyle(context),
                    // ),
                  ],
                ),
                const SizedBox(height: 70),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSection(context, '1. Information We Collect',
                        "• The website collects personal information such as names, email addresses, company names, phone numbers, and any data users voluntarily submit through contact forms, registrations, or downloads. \n• Technical data like IP addresses and cookies may also be collected automatically to ensure website functionality and security."),
                    const SizedBox(height: 26),
                    _buildSection(context, '2. Purpose of Data Use',
                        "• Personal data is used to provide services (e.g., sending newsletters, participation certificates, or requested documents).\n• It helps improve website performance, maintain security, and analyze user interactions to enhance user experience.\n• Data may be used for marketing communications, with user consent, to share updates about agrivoltaics projects and related events."),
                    const SizedBox(height: 26),
                    _buildSection(context, '3. Data Storage and Security',
                        "• User data is stored securely on servers located in India or with trusted third-party providers compliant with data protection standards.\n• Reasonable technical and organizational measures are implemented to prevent unauthorized access, loss, or misuse of data."),
                    const SizedBox(height: 26),
                    _buildSection(context, '4. User Rights',
                        "• Users have the right to access, correct, or delete their personal data.\n• They can object to data processing for marketing purposes and withdraw consent at any time.\n• The website should provide clear instructions on how users can exercise these rights."),
                    const SizedBox(height: 26),
                    _buildSection(context, '5. Cookies and Tracking',
                        "• The website uses cookies to enhance user experience and for analytics.\n• Users should be informed about cookie usage and given options to manage cookie preferences."),
                    const SizedBox(height: 26),
                    _buildSection(context, '6. Third-Party Sharing',
                        "• Personal data is not sold but may be shared with trusted service providers or partners involved in project delivery, under strict confidentiality agreements.\n• Links to external sites are provided with disclaimers that the website is not responsible for their privacy practices."),
                    const SizedBox(height: 26),
                    _buildSection(context, '7. Legal Compliance',
                        "• The policy complies with India’s Information Technology (Reasonable Security Practices and Procedures and Sensitive Personal Data or Information) Rules, 2011, and aligns with global standards like GDPR where applicable.\n• It includes provisions for handling data breaches and responding to legal requests."),
                    const SizedBox(height: 26),
                    _buildSection(context, '8. Consent and Updates',
                        "• By using the website, users consent to the privacy practices described.\n• The policy may be updated periodically, with changes posted on the website, and users encouraged to review it regularly."),
                  ],
                ),
                const SizedBox(height: 70),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
