import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiVerticalImageText extends StatelessWidget {
  const SafeSafaiVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor,
    this.topIconColor ,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color? textColor;
  final Color? backgroundColor, topIconColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: SafeSafaiSizes.spaceBtwItems),
        child: Column(
          children: [
            /// -- Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(SafeSafaiSizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor ?? (dark ? SafeSafaiColors.black: SafeSafaiColors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: topIconColor ?? (dark ? SafeSafaiColors.light: SafeSafaiColors.dark),
                ),
              ),
            ),

            /// Text
            Flexible(
              child: SizedBox(
                height: SafeSafaiSizes.spaceBtwItems / 2,
              ),
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor ?? (dark ? SafeSafaiColors.dark: SafeSafaiColors.light)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )),
          ],
        ),
      ),
    );
  }
}