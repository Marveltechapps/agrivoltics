import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './constants/styles.dart';

class EnquiryFormSection extends StatefulWidget {
  const EnquiryFormSection({Key? key}) : super(key: key);

  @override
  State<EnquiryFormSection> createState() => _EnquiryFormSectionState();
}

class _EnquiryFormSectionState extends State<EnquiryFormSection> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _cityController = TextEditingController();
  final _postalCodeController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _cityController.dispose();
    _postalCodeController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      constraints: const BoxConstraints(
        minWidth: 360,
        // maxWidth: 600,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'For Enquiry',
            style: ContactStyles.titleStyle(context),
          ),
          const SizedBox(height: 25.958),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _firstNameController,
                  decoration: ContactStyles.inputDecoration('First Name'),
                  style: ContactStyles.inputStyle(context),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _phoneController,
                  decoration: ContactStyles.inputDecoration('Phone Number'),
                  style: ContactStyles.inputStyle(context),
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _emailController,
                  decoration: ContactStyles.inputDecoration('E-Mail'),
                  style: ContactStyles.inputStyle(context),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _cityController,
                  decoration: ContactStyles.inputDecoration('City'),
                  style: ContactStyles.inputStyle(context),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _postalCodeController,
                  decoration: ContactStyles.inputDecoration('Postal/Zip Code'),
                  style: ContactStyles.inputStyle(context),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _messageController,
                  decoration:
                      ContactStyles.inputDecoration('Your Message(Required)'),
                  style: ContactStyles.inputStyle(context),
                  maxLines: 4,
                  minLines: 4,
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width <= 640
                      ? double.infinity
                      : double.infinity,
                  child: ElevatedButton(
                    onPressed: _submitForm,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7A9737),
                      padding: EdgeInsets.symmetric(
                        horizontal: 51.915,
                        vertical: MediaQuery.of(context).size.width <= 640
                            ? 12
                            : 17.305,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.163),
                      ),
                    ),
                    child: Text(
                      'Submit',
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width > 991
                            ? 26
                            : MediaQuery.of(context).size.width > 640
                                ? 22
                                : 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Handle form submission
      print('Form submitted');
    }
  }
}
