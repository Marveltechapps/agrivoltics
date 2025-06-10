import 'package:dio/dio.dart';
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
  void showSuccessPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Success 🎉"),
        content: const Text(
            "Email sent successfully! \nOur Team will get back to you soon"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              "OK",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  void showValidationPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Hold up! 🛑"),
        content: const Text("Please fill in all the required fields."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              "Got it",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  void showErrorPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Oops 😢"),
        content: const Text("Failed to send email. Please try again."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              "Retry",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  void onSubmit() async {}

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

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > 1280
          ? 1280 / 2.5
          : MediaQuery.of(context).size.width / 2.5,
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
                // Text(
                //   'Enter All the Fields',
                //   style: TextStyle(color: Colors.red, fontSize: 20),
                //   softWrap: true,
                //   textAlign: TextAlign.left,
                // ),
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
                    child: isLoading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.5,
                              color: Colors.white,
                            ),
                          )
                        : Text(
                            'Submit',
                            style: GoogleFonts.poppins(
                              fontSize: MediaQuery.of(context).size.width > 991
                                  ? 24
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

  void showNumberOnlyPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Invalid Postal Code 🚫"),
        content: const Text("Please enter numbers only in the postal code."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              "OK",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  String? validatePostalCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Postal code is required';
    }
    final regex = RegExp(r'^[0-9]+$');
    if (!regex.hasMatch(value)) {
      showNumberOnlyPopup(context);
      return 'Enter digits only (no letters or symbols)';
    }
    return null; // valid
  }

  Future<void> _submitForm() async {
    // print('postal code ${int.parse(_postalCodeController.text)}');
    // print({
    //   "firstName": _firstNameController.text,
    //   "phoneNumber": _phoneController.text,
    //   "email": _emailController.text,
    //   "city": _cityController.text,
    //   "zipcode": int.parse(_postalCodeController.text),
    //   "message": _messageController.text
    // });
    if (_firstNameController.text.isNotEmpty &&
        _phoneController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _cityController.text.isNotEmpty &&
        _postalCodeController.text.isNotEmpty &&
        _messageController.text.isNotEmpty) {
      final res = validatePostalCode(_postalCodeController.text);
      if (res != null) {
        return;
      }
      // Handle form submission
      print('Form submitted');
      setState(() => isLoading = true);
      try {
        final dio = Dio();
        final baseUrl = "https://nextgenagrivoltaics.in/";
        final response =
            await dio.post('${baseUrl}api/api/contact/send-email', data: {
          "firstName": _firstNameController.text,
          "phoneNumber": _phoneController.text,
          "email": _emailController.text,
          "city": _cityController.text,
          "zipcode": int.parse(_postalCodeController.text),
          "message": _messageController.text
        });
        if (response.statusCode == 200) {
          _firstNameController.clear();
          _phoneController.clear();
          _emailController.clear();
          _cityController.clear();
          _postalCodeController.clear();
          _messageController.clear();
          showSuccessPopup(context);

          setState(() => isLoading = false);
        } else {
          showErrorPopup(context);
          setState(() => isLoading = false);
        }
      } catch (e) {
        showErrorPopup(context);
        setState(() => isLoading = false);
      }
    } else {
      showValidationPopup(context);
      setState(() => isLoading = false);
    }
  }
}
