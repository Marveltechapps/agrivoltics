import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './constants/contact_icon.dart';
import './constants/styles.dart';

class ContactInfoSection extends StatelessWidget {
  const ContactInfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > 1280
          ? 1280 / 2.5
          : MediaQuery.of(context).size.width / 2.5,
      constraints: const BoxConstraints(
        minWidth: 360,
        maxWidth: 600,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact us',
            style: ContactStyles.titleStyle(context),
          ),
          const SizedBox(height: 45.426),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Clipboard.setData(ClipboardData(
                      text:
                          '1st Floor, No. 63, Lattice Bridge Road, Adyar, Chennai-600020, India'));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Address Copied to clipboard!')),
                  );
                },
                child: _buildContactItem(
                  context,
                  ContactIcons.locationIcon,
                  '1st Floor, No. 63, Lattice Bridge Road, Adyar, Chennai-600020, India',
                ),
              ),
              const SizedBox(height: 17.305),
              InkWell(
                onTap: () {
                  Clipboard.setData(ClipboardData(text: '+91 9444126240'));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('Mobile Number Copied to clipboard!')),
                  );
                },
                child: _buildContactItem(
                  context,
                  ContactIcons.phoneIcon,
                  '+91 9444 126 240',
                ),
              ),
              const SizedBox(height: 17.305),
              InkWell(
                onTap: () {
                  Clipboard.setData(
                      ClipboardData(text: 'shekar@nextgenagrivoltaics.in'));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Email Copied to clipboard!')),
                  );
                },
                child: _buildContactItem(
                  context,
                  ContactIcons.emailIcon,
                  'shekar@nextgenagrivoltaics.in',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(BuildContext context, String svgIcon, String text) {
    return Row(
      children: [
        SvgPicture.string(
          svgIcon,
          width: 40,
          height: 40,
        ),
        const SizedBox(width: 28.121),
        Expanded(
          child: Text(
            text,
            style: ContactStyles.contactInfoStyle(context),
          ),
        ),
      ],
    );
  }
}
