import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/common/styles/shadows.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:safe_safai_shop/common/widgets/icons/safesafai_circular_icon.dart';
import 'package:safe_safai_shop/common/widgets/images/safesafai_rounded_image.dart';
import 'package:safe_safai_shop/common/widgets/texts/product_price_text.dart';
import 'package:safe_safai_shop/common/widgets/texts/product_title_text.dart';
import 'package:safe_safai_shop/common/widgets/texts/safesafai_brand_title_text_with_verified_icon.dart';
import 'package:safe_safai_shop/features/shop/screens/product_details/product_detail.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiProductCardVertical extends StatelessWidget {
  const SafeSafaiProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(()=> const ProductDetailScreen()),
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [SafeSafaiShadowStyle.verticalProductShadow],
          borderRadius:
              BorderRadius.circular(SafeSafaiSizes.productImageRadius),
          color: dark ? SafeSafaiColors.darkerGrey : SafeSafaiColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, whishlisht and Discount Tag
            SafeSafaiRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(SafeSafaiSizes.sm),
              borderColor: Colors.red,
              backgroundColor:
                  dark ? SafeSafaiColors.dark : SafeSafaiColors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  SafeSafaiRoundedImage(
                    imageUrl: SafeSafaiImages.productImage1,
                    applyImageRadius: true,
                  ),

                  /// -- sale Tag
                  Positioned(
                    top: 12,
                    child: SafeSafaiRoundedContainer(
                      radius: SafeSafaiSizes.sm,
                      backgroundColor:
                          SafeSafaiColors.secondary.withOpacity(0.8),
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
                  // SafeSafaiRoundedImage(imageUrl: SafeSafaiImages.productImage2),
                ],
              ),
            ),
            SizedBox(
              height: SafeSafaiSizes.spaceBtwItems / 2,
            ),

            /// -- Details
            Padding(
              padding: EdgeInsets.only(left: SafeSafaiSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SafeSafaiProductTitleText(
                    title: 'Adidas running shoes for men',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwItems / 2,
                  ),
                  SafeSafaiBrandTitleWithVerifiedIcon(
                    title: 'Adidas',
                  ),
                ],
              ),
            ),

            /// ToDo: Add Spacer() here to keep the height of each Box same in case 1 or 2 lines of Heading
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                Padding(
                  padding: const EdgeInsets.only(left: SafeSafaiSizes.sm),
                  child: const SafeSafaiProductPriceText(
                    price: '2500',
                  ),
                ),
                /// Add to Cart Button
                Container(
                  decoration: BoxDecoration(
                      color: SafeSafaiColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(SafeSafaiSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(SafeSafaiSizes.productImageRadius))),
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
    );
  }
}
