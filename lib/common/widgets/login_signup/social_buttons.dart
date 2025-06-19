import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class SafeSafaiSocialButtons extends StatelessWidget {
  const SafeSafaiSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: SafeSafaiColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                width: SafeSafaiSizes.iconsMd,
                height: SafeSafaiSizes.iconsMd,
                image: AssetImage(SafeSafaiImages.google),
              )),
        ),
        const SizedBox(width: SafeSafaiSizes.spaceBtwItems,),
        /// facebook sign in option
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: SafeSafaiColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                width: SafeSafaiSizes.iconsMd,
                height: SafeSafaiSizes.iconsMd,
                image: AssetImage(SafeSafaiImages.facebook),
              )),
        ),
      ],
    );
  }
}