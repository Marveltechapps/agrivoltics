import 'package:flutter/material.dart';
import 'contact_info_section.dart';
import 'enquiry_form_section.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.width > 991
                  ? 25.958
                  : MediaQuery.of(context).size.width > 640
                      ? 20
                      : 16,
            ),
            child: Wrap(
              spacing: 20.405,
              runSpacing: 40.405,
              alignment: WrapAlignment.spaceEvenly,
              children: const [
                ContactInfoSection(),
                EnquiryFormSection(),
              ],
            ),
          );
        },
      ),
    );
  }
}
