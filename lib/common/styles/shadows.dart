import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';

class SafeSafaiShadowStyle {

  static final verticalProductShadow = BoxShadow(
    color: SafeSafaiColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
    color: SafeSafaiColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );
}