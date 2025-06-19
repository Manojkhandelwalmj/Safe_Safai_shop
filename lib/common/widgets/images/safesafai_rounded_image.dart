import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class SafeSafaiRoundedImage extends StatelessWidget {
  const SafeSafaiRoundedImage({
    super.key,
    this.border,
    this.paddinng,
    this.onPressed,
    this.width ,
    this.height = 150,
    this.applyImageRadius= true,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.backgroundColor,
    this.isNetworkImage = false,
    this.borderRadius = SafeSafaiSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? paddinng;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: paddinng,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl),
              fit: fit,
            )),
      ),
    );
  }
}