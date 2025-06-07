import 'package:flutter/material.dart';
import 'package:agri_voltics/theme/colors.dart';
import 'package:agri_voltics/theme/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RequirementCard extends StatefulWidget {
  final String svgIcon;
  final String title;
  final String description;
  final bool isOutlined;

  const RequirementCard({
    Key? key,
    required this.svgIcon,
    required this.title,
    required this.description,
    this.isOutlined = false,
  }) : super(key: key);

  @override
  State<RequirementCard> createState() => _RequirementCardState();
}

class _RequirementCardState extends State<RequirementCard> {
  bool isOutlined = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isOutlined = widget.isOutlined;
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isOutlined ? Colors.transparent : Color(0xFF7B9540);
    final textColor = isOutlined ? Color(0xFF7B9540) : Colors.white;
    final borderSide =
        isOutlined ? BorderSide(color: Color(0xFF7B9540)) : BorderSide.none;

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isOutlined = true;
        });
      },
      onExit: (_) {
        setState(() {
          isOutlined = false;
        });
      },
      child: Container(
        width: 337,
        height: MediaQuery.of(context).size.width < 768 ? null : 256,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(4),
          border: Border.fromBorderSide(borderSide),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.string(
              widget.svgIcon,
              width: 75,
              height: 75,
            ),
            const SizedBox(height: 15),
            Text(
              widget.title,
              style: AppTextStyles.cardTitle.copyWith(color: textColor),
              maxLines: 1,
            ),
            const SizedBox(height: 8),
            Text(
              widget.description,
              style: AppTextStyles.cardDescription.copyWith(color: textColor),
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 6,
            ),
          ],
        ),
      ),
    );
  }
}
