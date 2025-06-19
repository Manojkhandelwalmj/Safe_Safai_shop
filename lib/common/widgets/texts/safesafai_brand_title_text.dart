import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/enums.dart';

class SafeSafaiBrandTitleText extends StatelessWidget {
  const SafeSafaiBrandTitleText(
      {super.key,
      this.color,
      required this.title,
      required this.maxLines,
      this.textAlign,
      required this.brandTextSize});

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      // Check which brandSize is required and set that style.
      style: brandTextSize == TextSizes.small
        ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize  == TextSizes.medium
        ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
          : brandTextSize == TextSizes.large
        ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
          : Theme.of(context).textTheme.bodyMedium!.apply(color: color)
    );
  }
}
