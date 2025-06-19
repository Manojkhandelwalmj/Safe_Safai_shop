import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:safe_safai_shop/common/widgets/icons/safesafai_circular_icon.dart';
import 'package:safe_safai_shop/common/widgets/images/safesafai_rounded_image.dart';
import 'package:safe_safai_shop/common/widgets/texts/product_price_text.dart';
import 'package:safe_safai_shop/common/widgets/texts/product_title_text.dart';
import 'package:safe_safai_shop/common/widgets/texts/safesafai_brand_title_text_with_verified_icon.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiProductCardHorizontal extends StatelessWidget {
  const SafeSafaiProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SafeSafaiSizes.productImageRadius),
        color: dark ? SafeSafaiColors.darkerGrey : SafeSafaiColors.softGrey,
      ),
      child: Row(
        children: [
          /// Thumbnail
          SafeSafaiRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(SafeSafaiSizes.sm),
            backgroundColor:
                dark ? SafeSafaiColors.dark : SafeSafaiColors.light,
            child: Stack(
              children: [
                /// -- Thumbnail Image
                SizedBox(
                    width: 120,
                    height: 120,
                    child: SafeSafaiRoundedImage(
                      imageUrl: SafeSafaiImages.productImage2,
                      applyImageRadius: true,
                    )),

                /// -- sale Tag
                Positioned(
                  top: 12,
                  child: SafeSafaiRoundedContainer(
                    radius: SafeSafaiSizes.sm,
                    backgroundColor: SafeSafaiColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: SafeSafaiSizes.sm,
                        vertical: SafeSafaiSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: SafeSafaiColors.black),
                    ),
                  ),
                ),

                /// -- Favourite Icon Button
                Positioned(
                    top: 0,
                    right: 0,
                    child: SafeSafaiCircularIcon(
                      icon: CupertinoIcons.heart_fill,
                      color: Colors.red,
                    )),
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: SafeSafaiSizes.sm, left: SafeSafaiSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SafeSafaiProductTitleText(
                        title: 'Black Nike half sleev t-shirt Women',
                        smallSize: true,
                      ),
                      SizedBox(
                        height: SafeSafaiSizes.spaceBtwItems / 2,
                      ),
                      SafeSafaiBrandTitleWithVerifiedIcon(title: 'Nike')
                    ],
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Pricing
                      const Flexible(
                          child: SafeSafaiProductPriceText(price: '499.0')),

                      /// Add to Cart Button
                      Container(
                        decoration: BoxDecoration(
                            color: SafeSafaiColors.dark,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    SafeSafaiSizes.cardRadiusMd),
                                bottomRight: Radius.circular(
                                    SafeSafaiSizes.productImageRadius))),
                        child: const SizedBox(
                            width: SafeSafaiSizes.iconsLg, //* 1.2,
                            height: SafeSafaiSizes.iconsLg, //* 1.2,
                            child: Center(
                                child: Icon(
                              Icons.add,
                              color: SafeSafaiColors.white,
                            ))),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
