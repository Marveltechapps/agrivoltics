import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './constants/colors.dart';

class FAQItem extends StatefulWidget {
  final String question;
  final String answer;

  const FAQItem({
    Key? key,
    required this.question,
    required this.answer,
  }) : super(key: key);

  @override
  State<FAQItem> createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Column(
        children: [
          _buildQuestionSection(),
          if (_isExpanded) _buildAnswerSection(),
        ],
      ),
    );
  }

  Widget _buildQuestionSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: const Radius.circular(4),
          bottom: Radius.circular(_isExpanded ? 0 : 4),
        ),
        border: Border.all(color: AppColors.border),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => setState(() => _isExpanded = !_isExpanded),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.question,
                    style: GoogleFonts.openSans(
                      fontSize: _getQuestionFontSize(
                          MediaQuery.of(context).size.width),
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimary,
                      height: 1.2,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Icon(
                  _isExpanded ? Icons.remove : Icons.add,
                  color: AppColors.textPrimary,
                  size: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnswerSection() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(4)),
        border: Border.all(color: AppColors.border),
      ),
      padding: const EdgeInsets.all(16),
      child: Text(
        widget.answer,
        style: GoogleFonts.openSans(
          fontSize: _getAnswerFontSize(MediaQuery.of(context).size.width),
          fontWeight: FontWeight.w400,
          color: AppColors.textPrimary,
          height: 1.4,
        ),
      ),
    );
  }

  double _getQuestionFontSize(double width) {
    if (width <= 640) return 20;
    if (width <= 991) return 22;
    return 24;
  }

  double _getAnswerFontSize(double width) {
    if (width <= 640) return 16;
    if (width <= 991) return 18;
    return 20;
  }
}
