import 'package:flutter/material.dart';
import './theme/text_styles.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({Key? key}) : super(key: key);

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
                      'Terms of Service',
                      style: _getResponsiveHeaderStyle(context),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Effective Date: May 29, 2025',
                      style: _getResponsiveBodyStyle(context),
                    ),
                    const SizedBox(height: 22),
                    Text(
                      'Please read this Terms of Service ("Terms," "Terms of Service") carefully before using the our website (the "Website") operated by us ("us," "we," "our") as this Terms of Service contains important information regarding limitations of our liability. Your access to and use of this Website is conditional upon your acceptance of and compliance with these Terms. These Terms apply to everyone, including but not limited to visitors, users and others, who wish to access and use the Website.',
                      style: _getResponsiveBodyStyle(context),
                    ),
                    const SizedBox(height: 22),
                    Text(
                      'By accessing or using the Website, you agree to be bound by these Terms. If you disagree with any part of the Terms, then you do not have our permission to access or use the Website.',
                      style: _getResponsiveBodyStyle(context),
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSection(
                      context,
                      '1. Regulatory Compliance',
                      'The project must comply with all applicable central and state government regulations related to solar energy, agriculture, land use, and environmental protection. This includes adherence to guidelines from ministries such as the Ministry of Agriculture & Farmers Welfare and the Ministry of New and Renewable Energy (MNRE)',
                    ),
                    const SizedBox(height: 26),
                    _buildSection(
                      context,
                      '2. Land Use and Ownership',
                      'Clear ownership and usage rights of the land must be established upfront, ensuring that agricultural activities continue alongside solar power generation without compromising crop yields The website should clarify that agrivoltaics respects land tenure and promotes cooperative models between farmers and developers.',
                    ),
                    const SizedBox(height: 26),
                    _buildSection(
                      context,
                      '3. Agricultural Continuity',
                      'The agrivoltaic system design must prioritize sustaining agricultural productivity, including limits on solar panel coverage to ensure adequate sunlight for crops. The website should emphasize that farming activities will not be significantly degraded by the solar installation',
                    ),
                    const SizedBox(height: 26),
                    _buildSection(
                      context,
                      '4. Data and Reporting',
                      'Periodic reporting on crop cultivation, system maintenance, and environmental impact may be required. The website should inform users about commitments to transparency and continuous monitoring to optimize agrivoltaic performance',
                    ),
                    const SizedBox(height: 26),
                    _buildSection(
                      context,
                      '5. Stakeholder Collaboration',
                      'The project encourages collaboration between farmers, developers, and government agencies. The website should outline roles and responsibilities, highlighting partnership models that balance agricultural and energy production interests',
                    ),
                    const SizedBox(height: 26),
                    _buildSection(
                      context,
                      '6. Innovation and Adaptation',
                      'The website should mention that agrivoltaics is an evolving field, and designs or operational practices may adapt based on ongoing feedback from stakeholders and technological advances',
                    ),
                    const SizedBox(height: 26),
                    _buildSection(
                      context,
                      '7. Legal and Financial Disclaimers',
                      'The website should include disclaimers regarding investment risks, regulatory changes, and the need for users to conduct their own due diligence before participation. It should also clarify that the website is for informational purposes and does not guarantee project success or financial returns.',
                    ),
                    const SizedBox(height: 26),
                    _buildSection(
                      context,
                      '8. Privacy and Data Protection',
                      'The website must comply with India\'s data protection laws, ensuring user data confidentiality and secure handling of any personal or project-related information submitted through the site.',
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Changes to Terms of Service',
                      style: _getResponsiveHeaderStyle(context),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      'We reserve the right to make changes to these Terms of Service at any time. We will notify you immediately of making any changes to these Terms of Service via by posting the updated terms of service to this website.',
                      style: _getResponsiveBodyStyle(context),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
