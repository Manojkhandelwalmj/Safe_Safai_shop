import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/device/device_utility.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiSearchContainer extends StatelessWidget {
  const SafeSafaiSearchContainer(
      {super.key,
      required this.text,
      this.icon = Icons.search,
      this.showBorder = true,
      this.showBackground = true,
      this.onTap, this.padding = const EdgeInsets.symmetric(horizontal: SafeSafaiSizes.defaultSpace)
      });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: SafeSafaiDeviceUtils.getScreenWidth(),
          padding: EdgeInsets.all(SafeSafaiSizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? SafeSafaiColors.dark
                      : SafeSafaiColors.white
                  : Colors.transparent,
              border:
                  showBorder ? Border.all(color: SafeSafaiColors.grey) : null,
              borderRadius: BorderRadius.circular(SafeSafaiSizes.cardRadiusLg)),
          child: Row(
            children: [
              Icon(
                icon,
                color: SafeSafaiColors.darkerGrey,
              ),
              const SizedBox(
                width: SafeSafaiSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
