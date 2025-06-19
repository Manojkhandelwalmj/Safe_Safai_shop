import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/texts/safesafai_brand_title_text.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/enums.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class SafeSafaiBrandTitleWithVerifiedIcon extends StatelessWidget {
  const SafeSafaiBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = SafeSafaiColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: SafeSafaiBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: SafeSafaiSizes.xs),
        const Icon(
          Icons.verified,
          color: SafeSafaiColors.primary,
          size: SafeSafaiSizes.iconsXs,
        ),
      ],
    );
  }
}
