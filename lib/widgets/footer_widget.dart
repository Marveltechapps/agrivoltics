import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;

        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 20 : 40,
            vertical: 51,
          ),
          color: const Color.fromRGBO(123, 149, 64, 1),
          child: Column(
            children: [
              Image.asset(
                'assets/icons/footerimage.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.contain,
              ),
              Container(
                constraints: BoxConstraints(
                  maxWidth: isMobile ? double.infinity : 1600,
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFirstColumn(isMobile),
                      SizedBox(
                        height: 30,
                      ),
                      _buildSecondColumn(isMobile),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 61),
              Text(
                '@2025 Next gen agrivoltaics',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
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
            Image.network(
              'assets/logo/LOGO1.png',
              width: 337,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 13),
            Text(
              'Contact us today to explore our services and take advantage of the great deals available from us',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
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

  Widget _buildSecondColumn(bool isMobile) {
    return Container(
      padding: EdgeInsets.all(10),
      child: !isMobile
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              // alignment: WrapAlignment.spaceBetween,

              spacing: 0,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Company',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 9),
                    _buildFooterLink('Communities'),
                    _buildFooterLink('About us'),
                    _buildFooterLink('Careers'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quick Links',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 9),
                    _buildFooterLink("FAQ's"),
                    _buildFooterLink('Privacy Policy'),
                    _buildFooterLink('Terms & Conditions'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 17),
                    Row(
                      children: [
                        Image.network(
                          'assets/icons/mingcute_phone-fill.png',
                          width: 21,
                          height: 21,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(width: 15),
                        Text(
                          '+91 9444123240',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 21),
                    Row(
                      children: [
                        Image.network(
                          'assets/icons/mdi_email.png',
                          width: 18,
                          height: 19,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(width: 19),
                        Text(
                          'companyname@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 21),
                    Image.network(
                      'assets/icons/Footer Social Container.png',
                      width: 94,
                      fit: BoxFit.contain,
                    ),
                  ],
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
                    Text(
                      'Company',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 9),
                    _buildFooterLink('Communities'),
                    _buildFooterLink('About us'),
                    _buildFooterLink('Careers'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quick Links',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 9),
                    _buildFooterLink("FAQ's"),
                    _buildFooterLink('Privacy Policy'),
                    _buildFooterLink('Terms & Conditions'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 17),
                    Row(
                      children: [
                        Image.network(
                          'assets/icons/mingcute_phone-fill.png',
                          width: 21,
                          height: 21,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(width: 15),
                        Text(
                          '+91 9444123240',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 21),
                    Row(
                      children: [
                        Image.network(
                          'assets/icons/mdi_email.png',
                          width: 18,
                          height: 19,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(width: 19),
                        Text(
                          'companyname@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 21),
                    Image.network(
                      'assets/icons/Footer Social Container.png',
                      width: 94,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ],
            ),
    );
  }

  Widget _buildFooterLink(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 9),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 2.19,
        ),
      ),
    );
  }
}
