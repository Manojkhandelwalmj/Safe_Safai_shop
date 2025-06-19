import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/icons/safesafai_circular_icon.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiProductQuantityWithAddRemoveButton extends StatelessWidget {
  const SafeSafaiProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SafeSafaiCircularIcon(
          icon: Icons.remove,
          width: 32,
          height: 32,
          size: SafeSafaiSizes.md,
          color: SafeSafaiHelperFunctions.isDarkMode(context)? SafeSafaiColors.white: SafeSafaiColors.black,
          backgroundColor: SafeSafaiHelperFunctions.isDarkMode(context)? SafeSafaiColors.darkerGrey: SafeSafaiColors.light,
        ),
        const SizedBox(width: SafeSafaiSizes.spaceBtwItems,),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: SafeSafaiSizes.spaceBtwItems,),
        SafeSafaiCircularIcon(
          icon: Icons.add,
          width: 32,
          height: 32,
          size: SafeSafaiSizes.md,
          color: SafeSafaiHelperFunctions.isDarkMode(context)? SafeSafaiColors.white: SafeSafaiColors.black,
          backgroundColor: SafeSafaiColors.primary,
        ),
      ],
    );
  }
}