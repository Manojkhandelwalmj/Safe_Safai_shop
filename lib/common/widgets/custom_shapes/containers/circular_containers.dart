import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';

class SafeSafaiCircularContainer extends StatelessWidget {
  const SafeSafaiCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.margin,
    this.padding = 0,
    this.child,
    this.backgroundColor,

  });
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor ?? SafeSafaiColors.white.withOpacity(0.1),
      ),
      child: child,
    );
  }
}