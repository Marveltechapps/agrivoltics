import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NetworkImageWidget extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final Alignment? alignment;

  const NetworkImageWidget(
    this.imageUrl, {
    super.key,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.borderRadius,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    Widget image = CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      width: width,
      height: height,
      alignment: alignment ?? Alignment.center,

      // loadingBuilder: (context, child, loadingProgress) {
      //   if (loadingProgress == null) return child;
      //   return Lottie.asset('lottie/image.json');
      // },
      placeholder: (context, data) {
        return Lottie.asset('lottie/image.json');
      },
      errorWidget: (context, error, stackTrace) {
        return Lottie.asset('lottie/image.json');
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
