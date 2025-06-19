import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiCircularImage extends StatelessWidget {
  const SafeSafaiCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
    this.fit = BoxFit.cover,
    this.padding = SafeSafaiSizes.sm,
    this.isNetworkImage = false,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (SafeSafaiHelperFunctions.isDarkMode(context) ? SafeSafaiColors.black : SafeSafaiColors.white ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
          fit: fit,
          image: isNetworkImage ? NetworkImage(image) : AssetImage(
          image) as ImageProvider,
      color: overlayColor,
    ),);
  }
}
