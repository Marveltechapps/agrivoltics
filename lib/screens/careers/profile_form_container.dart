import 'package:flutter/material.dart';
import './styles/colors.dart';
import './styles/text_styles.dart';

class ProfileFormContainer extends StatefulWidget {
  const ProfileFormContainer({Key? key}) : super(key: key);

  @override
  _ProfileFormContainerState createState() => _ProfileFormContainerState();
}

class _ProfileFormContainerState extends State<ProfileFormContainer> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _resumeController = TextEditingController();
  final _coverLetterController = TextEditingController();

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width > 991 ? 35 : 20,
        vertical: 17,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.326),
        borderSide: const BorderSide(
          color: AppColors.inputBorder,
          width: 2.163,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.326),
        borderSide: const BorderSide(
          color: AppColors.inputBorder,
          width: 2.163,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.326),
        borderSide: const BorderSide(
          color: AppColors.inputBorder,
          width: 2.163,
        ),
      ),
      filled: true,
      fillColor: AppColors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final horizontalPadding = screenWidth > 991 ? 60.0 : 20.0;

    return Padding(
      // padding: const EdgeInsets.all(8.0),
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Container(
        constraints: const BoxConstraints(minWidth: 360, maxWidth: 1280),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 26),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'If your profile is not listed above, Give your details here.',
                      style: AppTextStyles.title,
                    ),
                    const SizedBox(height: 26),
                    TextFormField(
                      controller: _fullNameController,
                      decoration: _buildInputDecoration().copyWith(
                        hintText: 'Full Name',
                        hintStyle: AppTextStyles.inputText,
                      ),
                      style: AppTextStyles.inputText,
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _phoneController,
                      decoration: _buildInputDecoration().copyWith(
                        hintText: 'Phone Number',
                        hintStyle: AppTextStyles.inputText,
                      ),
                      style: AppTextStyles.inputText,
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _emailController,
                      decoration: _buildInputDecoration().copyWith(
                        hintText: 'E-Mail',
                        hintStyle: AppTextStyles.inputText,
                      ),
                      style: AppTextStyles.inputText,
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _resumeController,
                      decoration: _buildInputDecoration().copyWith(
                        hintText: 'Resume',
                        hintStyle: AppTextStyles.inputText,
                      ),
                      style: AppTextStyles.inputText,
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _coverLetterController,
                      decoration: _buildInputDecoration().copyWith(
                        hintText: 'Cover letter',
                        hintStyle: AppTextStyles.inputText,
                      ),
                      style: AppTextStyles.inputText,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: screenWidth > 991 ? 30 : 30,
                ),
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // Handle form submission
                    }
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.submitButton,
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth > 991 ? 52 : 20,
                      vertical: 17,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  child: Text(
                    'Submit',
                    style: AppTextStyles.submitButton,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _resumeController.dispose();
    _coverLetterController.dispose();
    super.dispose();
  }
}
