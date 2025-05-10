import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckCircleIcon extends StatelessWidget {
  const CheckCircleIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String svgString = '''
    <svg width="34" height="35" viewBox="0 0 34 35" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M17.1806 29.5389C10.6778 29.5389 5.40625 24.2673 5.40625 17.7646C5.40625 11.2618 10.6778 5.99023 17.1806 5.99023C23.6833 5.99023 28.9549 11.2618 28.9549 17.7646C28.9549 24.2673 23.6833 29.5389 17.1806 29.5389ZM16.0062 22.4743L24.332 14.1486L22.6669 12.4835L16.0062 19.1441L12.676 15.8137L11.0108 17.4789L16.0062 22.4743Z" fill="#2F872D"/>
    </svg>
    ''';

    return SizedBox(
      width: 33.361,
      height: 33.361,
      child: SvgPicture.string(
        svgString,
        width: 33.361,
        height: 33.361,
      ),
    );
  }
}
