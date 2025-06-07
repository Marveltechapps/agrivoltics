import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final Alignment? alignment;

  const NetworkImageWidget(
    
    this.imageUrl,
    {
    super.key,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.borderRadius,
    this.alignment
  });

  @override
  Widget build(BuildContext context) {
    Widget image = Image.network(
      imageUrl,
      fit: fit,
      width: width,
      height: height,
      alignment: alignment??Alignment.center,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return Center(
          child: Icon(
            Icons.broken_image,
            size: width ?? 40,
            color: Colors.grey,
          ),
        );
      },
    );

    if (borderRadius != null) {
      image = ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: image,
      );
    }

    return image;
  }
}
