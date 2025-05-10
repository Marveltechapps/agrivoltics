import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String boldText;

  const ListItem({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.boldText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF777777),
            width: 1.0,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/icons/checkbox-circle-fill.png',
            width: 33,
            height: 33,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 19,
                  color: Color(0xFF333333),
                  height: 1.6,
                  fontFamily: 'Inter',
                ),
                children: [
                  TextSpan(
                    text: '$boldText - ',
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(text: text),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
