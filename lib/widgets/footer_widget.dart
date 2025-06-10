import 'package:agri_voltics/providers/navigationprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 0.0,
          children: [
            Image.asset(
              color: Color.fromRGBO(123, 149, 64, 1),
              'assets/icons/footerimage.png',
              width: MediaQuery.of(context).size.width,
              // height: 65,
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
              // height: 20,
            ),
            Transform.translate(
              offset: Offset(0, -1),
              child: Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20 : 30,
                  vertical: 10,
                ),
                color: const Color.fromRGBO(123, 149, 64, 1),
                child: Column(
                  children: [
                    // Image.asset(
                    //   'assets/icons/footerimage.png',
                    //   width: MediaQuery.of(context).size.width,
                    //   fit: BoxFit.contain,
                    //   height: 20,
                    // ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: isMobile ? double.infinity : 1280,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // _buildFirstColumn(isMobile),
                            // SizedBox(
                            //   height: 30,
                            // ),
                            _buildSecondColumn(isMobile, context),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            '@2025 Next gen agrivoltaics',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              // fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildFirstColumn(bool isMobile) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 360,
      ),
      child: Flexible(
        flex: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/logo/LOGO1.png',
              width: 337,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 13),
            Text(
              'Contact us today to explore our services and take advantage of the great deals available from us',
              style: TextStyle(
                color: Colors.white,
                // fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.69,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSecondColumn(bool isMobile, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: !isMobile
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              // alignment: WrapAlignment.spaceBetween,

              spacing: 20,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          GoRouter.of(context).push('/');
                          context.read<NavigationProvider>().updateRoute('/');
                        },
                        child: Image.asset(
                          'assets/logo/LOGO1.png',
                          width: 337,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 13),
                      Text(
                        'Contact us today to explore our services and take advantage of the great deals available from us',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          // fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.69,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Company',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              // fontFamily: 'Roboto',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 9),
                          InkWell(
                              onTap: () {
                                GoRouter.of(context).push('/communities');
                                context
                                    .read<NavigationProvider>()
                                    .updateRoute('/communities');
                              },
                              child: _buildFooterLink('Communities')),
                          InkWell(
                              onTap: () {
                                GoRouter.of(context).push('/');
                                context
                                    .read<NavigationProvider>()
                                    .updateRoute('/');
                              },
                              child: _buildFooterLink('About us')),
                          // InkWell(
                          //     onTap: () {
                          //       GoRouter.of(context).push('/careers');
                          //       context
                          //           .read<NavigationProvider>()
                          //           .updateRoute('/careers');
                          //     },
                          //     child: _buildFooterLink('Careers')),
                          InkWell(
                              onTap: () {
                                GoRouter.of(context).push('/solutions');
                                context
                                    .read<NavigationProvider>()
                                    .updateRoute('/solutions');
                              },
                              child: _buildFooterLink('Solutions'))
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Quick Links',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              // fontFamily: 'Roboto',
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 9),
                          InkWell(
                              onTap: () {
                                GoRouter.of(context).push('/faq');
                                context
                                    .read<NavigationProvider>()
                                    .updateRoute('/faq');
                              },
                              child: _buildFooterLink("FAQ's")),
                          InkWell(
                              onTap: () {
                                GoRouter.of(context).push('/privacypolicy');
                                context
                                    .read<NavigationProvider>()
                                    .updateRoute('/privacypolicy');
                              },
                              child: _buildFooterLink('Privacy Policy')),
                          InkWell(
                              onTap: () {
                                GoRouter.of(context).push('/termsconditions');
                                context
                                    .read<NavigationProvider>()
                                    .updateRoute('/termsconditions');
                              },
                              child: _buildFooterLink('Terms & Conditions')),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              GoRouter.of(context).push('/contact');
                              context
                                  .read<NavigationProvider>()
                                  .updateRoute('/contact');
                            },
                            child: Text(
                              'Contact',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                // fontFamily: 'Roboto',
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 17),
                          Row(
                            children: [
                              SvgPicture.string(
                                '''<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_1152_1172)">
<path fill-rule="evenodd" clip-rule="evenodd" d="M15.0022 19.448C13.7422 19.4016 10.1713 18.9081 6.43154 15.1692C2.69267 11.4295 2.20004 7.85945 2.15279 6.59858C2.08279 4.67708 3.55454 2.8107 5.25467 2.08183C5.45939 1.99343 5.68359 1.95977 5.90525 1.98416C6.12692 2.00855 6.33843 2.09015 6.51904 2.22095C7.91904 3.2412 8.88504 4.7847 9.71454 5.99833C9.89705 6.26497 9.97509 6.58943 9.93378 6.9099C9.89247 7.23037 9.7347 7.52444 9.49054 7.73608L7.78342 9.00395C7.70094 9.06351 7.64288 9.15098 7.62003 9.25011C7.59718 9.34924 7.61109 9.4533 7.65917 9.54295C8.04592 10.2456 8.73367 11.2921 9.52117 12.0796C10.3095 12.8671 11.405 13.6003 12.1567 14.0308C12.2509 14.0837 12.3618 14.0985 12.4666 14.0722C12.5714 14.0458 12.6622 13.9803 12.7202 13.8891L13.8314 12.1977C14.0357 11.9263 14.3371 11.7445 14.6724 11.6904C15.0078 11.6362 15.3511 11.7139 15.6304 11.9072C16.8615 12.7595 18.2983 13.7088 19.35 15.0555C19.4915 15.2374 19.5814 15.4539 19.6105 15.6825C19.6396 15.9111 19.6068 16.1433 19.5154 16.3548C18.783 18.0637 16.9298 19.5188 15.0022 19.448Z" fill="white"/>
</g>
<defs>
<clipPath id="clip0_1152_1172">
<rect width="21" height="21" fill="white" transform="translate(0.320312 0.0817871)"/>
</clipPath>
</defs>
</svg>
''',
                                width: 21,
                                height: 21,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Clipboard.setData(
                                        ClipboardData(text: '+91 9444126240'));
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'Mobile Number Copied to clipboard!')),
                                    );
                                  },
                                  child: Text(
                                    '+91 9444 126 240',
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      // fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 21),
                          Row(
                            children: [
                              SvgPicture.string(
                                '''<svg width="19" height="20" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M15.9125 6.8157L9.75519 10.664L3.59791 6.8157V5.27638L9.75519 9.12468L15.9125 5.27638M15.9125 3.73706H3.59791C2.74359 3.73706 2.05859 4.42206 2.05859 5.27638V14.5123C2.05859 14.9206 2.22077 15.3121 2.50945 15.6008C2.79813 15.8894 3.18966 16.0516 3.59791 16.0516H15.9125C16.3207 16.0516 16.7123 15.8894 17.0009 15.6008C17.2896 15.3121 17.4518 14.9206 17.4518 14.5123V5.27638C17.4518 4.86813 17.2896 4.4766 17.0009 4.18792C16.7123 3.89924 16.3207 3.73706 15.9125 3.73706Z" fill="white"/>
</svg>
''',
                                width: 21,
                                height: 21,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Clipboard.setData(ClipboardData(
                                        text: 'shekar@nextgenagrivoltaics.in'));
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'Email Copied to clipboard!')),
                                    );
                                  },
                                  child: Text(
                                    'shekar@nextgenagrivoltaics.in',
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      // fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 21),
                          // Image.network(
                          //   'assets/icons/Footer Social Container.png',
                          //   width: 94,
                          //   fit: BoxFit.contain,
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Wrap(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.start,
              // alignment: WrapAlignment.spaceBetween,

              spacing: 20,
              runSpacing: 20,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        GoRouter.of(context).push('/');
                        context.read<NavigationProvider>().updateRoute('/');
                      },
                      child: Image.asset(
                        'assets/logo/LOGO1.png',
                        width: 337,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 13),
                    Text(
                      'Contact us today to explore our services and take advantage of the great deals available from us',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        // fontFamily: 'Roboto',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.69,
                      ),
                    ),
                  ],
                ),
                Container(
                  constraints: BoxConstraints(minWidth: 300),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Company',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          // fontFamily: 'Roboto',
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 9),
                      InkWell(
                          onTap: () {
                            GoRouter.of(context).push('/communities');
                          },
                          child: _buildFooterLink('Communities')),
                      InkWell(
                          onTap: () {
                            GoRouter.of(context).push('/about');
                          },
                          child: _buildFooterLink('About us')),
                      InkWell(
                          onTap: () {
                            GoRouter.of(context).push('/solutions');
                          },
                          child: _buildFooterLink('Solutions')),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quick Links',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        // fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 9),
                    InkWell(
                        onTap: () {
                          GoRouter.of(context).push('/faq');
                        },
                        child: _buildFooterLink("FAQ's")),
                    InkWell(
                        onTap: () {
                          GoRouter.of(context).push('/privacypolicy');
                        },
                        child: _buildFooterLink('Privacy Policy')),
                    InkWell(
                        onTap: () {
                          GoRouter.of(context).push('/termsconditions');
                        },
                        child: _buildFooterLink('Terms & Conditions')),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        GoRouter.of(context).push('/contact');
                        context
                            .read<NavigationProvider>()
                            .updateRoute('/contact');
                      },
                      child: Text(
                        'Contact',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          // fontFamily: 'Roboto',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 17),
                    Row(
                      children: [
                        SvgPicture.string(
                          '''<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_1152_1172)">
<path fill-rule="evenodd" clip-rule="evenodd" d="M15.0022 19.448C13.7422 19.4016 10.1713 18.9081 6.43154 15.1692C2.69267 11.4295 2.20004 7.85945 2.15279 6.59858C2.08279 4.67708 3.55454 2.8107 5.25467 2.08183C5.45939 1.99343 5.68359 1.95977 5.90525 1.98416C6.12692 2.00855 6.33843 2.09015 6.51904 2.22095C7.91904 3.2412 8.88504 4.7847 9.71454 5.99833C9.89705 6.26497 9.97509 6.58943 9.93378 6.9099C9.89247 7.23037 9.7347 7.52444 9.49054 7.73608L7.78342 9.00395C7.70094 9.06351 7.64288 9.15098 7.62003 9.25011C7.59718 9.34924 7.61109 9.4533 7.65917 9.54295C8.04592 10.2456 8.73367 11.2921 9.52117 12.0796C10.3095 12.8671 11.405 13.6003 12.1567 14.0308C12.2509 14.0837 12.3618 14.0985 12.4666 14.0722C12.5714 14.0458 12.6622 13.9803 12.7202 13.8891L13.8314 12.1977C14.0357 11.9263 14.3371 11.7445 14.6724 11.6904C15.0078 11.6362 15.3511 11.7139 15.6304 11.9072C16.8615 12.7595 18.2983 13.7088 19.35 15.0555C19.4915 15.2374 19.5814 15.4539 19.6105 15.6825C19.6396 15.9111 19.6068 16.1433 19.5154 16.3548C18.783 18.0637 16.9298 19.5188 15.0022 19.448Z" fill="white"/>
</g>
<defs>
<clipPath id="clip0_1152_1172">
<rect width="21" height="21" fill="white" transform="translate(0.320312 0.0817871)"/>
</clipPath>
</defs>
</svg>
''',
                          width: 21,
                          height: 21,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Clipboard.setData(
                                  ClipboardData(text: '+91 9444126240'));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        'Mobile Number Copied to clipboard!')),
                              );
                            },
                            child: Text(
                              '+91 9444 126 240',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                // fontFamily: 'Roboto',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 21),
                    Row(
                      children: [
                        SvgPicture.string(
                          '''<svg width="19" height="20" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M15.9125 6.8157L9.75519 10.664L3.59791 6.8157V5.27638L9.75519 9.12468L15.9125 5.27638M15.9125 3.73706H3.59791C2.74359 3.73706 2.05859 4.42206 2.05859 5.27638V14.5123C2.05859 14.9206 2.22077 15.3121 2.50945 15.6008C2.79813 15.8894 3.18966 16.0516 3.59791 16.0516H15.9125C16.3207 16.0516 16.7123 15.8894 17.0009 15.6008C17.2896 15.3121 17.4518 14.9206 17.4518 14.5123V5.27638C17.4518 4.86813 17.2896 4.4766 17.0009 4.18792C16.7123 3.89924 16.3207 3.73706 15.9125 3.73706Z" fill="white"/>
</svg>
''',
                          width: 21,
                          height: 21,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Clipboard.setData(ClipboardData(
                                  text: 'shekar@nextgenagrivoltaics.in'));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content:
                                        Text('Email Copied to clipboard!')),
                              );
                            },
                            child: Text(
                              'shekar@nextgenagrivoltaics.in',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                // fontFamily: 'Roboto',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 21),
                    // Image.network(
                    //   'assets/icons/Footer Social Container.png',
                    //   width: 94,
                    //   fit: BoxFit.contain,
                    // ),
                  ],
                ),
              ],
            ),
    );
  }

  Widget _buildFooterLink(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Text(
        text,
        style: GoogleFonts.roboto(
          color: Colors.white,
          // fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 1.9,
        ),
      ),
    );
  }
}
