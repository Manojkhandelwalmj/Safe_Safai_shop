import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class SafeSafaiRoundedContainer extends StatelessWidget {
  const SafeSafaiRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.margin,
      this.padding,
      this.child,
      this.showBorder = false,
      this.radius = SafeSafaiSizes.cardRadiusLg,
      this.backgroundColor = SafeSafaiColors.white,
      this.borderColor = SafeSafaiColors.borderPrimary,
      });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
