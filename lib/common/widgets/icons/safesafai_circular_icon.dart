import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiCircularIcon extends StatelessWidget {
  const SafeSafaiCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = SafeSafaiSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : SafeSafaiHelperFunctions.isDarkMode(context)
                ? SafeSafaiColors.black.withOpacity(0.9)
                : SafeSafaiColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child:
          IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size,)),
    );
  }
}
