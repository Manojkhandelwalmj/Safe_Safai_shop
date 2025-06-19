import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/icons/safesafai_circular_icon.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiBottomAddToCart extends StatelessWidget {
  const SafeSafaiBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: SafeSafaiSizes.defaultSpace,
          vertical: SafeSafaiSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? SafeSafaiColors.darkerGrey : SafeSafaiColors.light,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                SafeSafaiSizes.cardRadiusLg,
              ),
              topRight: Radius.circular(SafeSafaiSizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SafeSafaiCircularIcon(
                icon: Icons.remove,
                backgroundColor: SafeSafaiColors.black,
                width: 40,
                height: 40,
                color: SafeSafaiColors.white,
              ),
              const SizedBox(
                width: SafeSafaiSizes.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: SafeSafaiSizes.spaceBtwItems,
              ),
              SafeSafaiCircularIcon(
                icon: Icons.add,
                backgroundColor: SafeSafaiColors.black,
                width: 40,
                height: 40,
                color: SafeSafaiColors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(SafeSafaiSizes.md),
                backgroundColor: SafeSafaiColors.black,
                side: const BorderSide(color: SafeSafaiColors.black)
              ),
              child: const Text('Add to Cart'))
        ],
      ),
    );
  }
}
