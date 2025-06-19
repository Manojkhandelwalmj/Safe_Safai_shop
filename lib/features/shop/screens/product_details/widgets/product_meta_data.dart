import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:safe_safai_shop/common/widgets/images/safesafai_circular_image.dart';
import 'package:safe_safai_shop/common/widgets/texts/product_price_text.dart';
import 'package:safe_safai_shop/common/widgets/texts/product_title_text.dart';
import 'package:safe_safai_shop/common/widgets/texts/safesafai_brand_title_text_with_verified_icon.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/enums.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiProductMetaData extends StatelessWidget {
  const SafeSafaiProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            SafeSafaiRoundedContainer(
              radius: SafeSafaiSizes.sm,
              backgroundColor:
              SafeSafaiColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: SafeSafaiSizes.sm,
                  vertical: SafeSafaiSizes.xs),
              child: Text(
                '50% Off',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: SafeSafaiColors.black),
              ),
            ),
            const SizedBox(width: SafeSafaiSizes.spaceBtwItems,),
            /// Price
            Text('₹5000',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: SafeSafaiSizes.spaceBtwItems/1.5,),
            SafeSafaiProductPriceText(price: '2500', isLarge: true,)
          ],
        ),
        const SizedBox(height: SafeSafaiSizes.spaceBtwItems/1.5,),

        /// Title
        SafeSafaiProductTitleText(title: 'Blue Adidas Sport Shoes for Men'),
        const SizedBox(height: SafeSafaiSizes.spaceBtwItems/1.5,),

        /// Stock Status
        Row(
          children: [SafeSafaiProductTitleText(title: 'Status: '),
            const SizedBox(width: SafeSafaiSizes.spaceBtwItems,),
            Text('In Stock'),],
        ),
        const SizedBox(height: SafeSafaiSizes.spaceBtwItems/1.5,),

        /// Brand
        Row(
          children: [
            SafeSafaiCircularImage(image: SafeSafaiImages.shoeIcon,
            width: 32,height: 32,overlayColor: dark ? SafeSafaiColors.white: SafeSafaiColors.black,backgroundColor: Colors.transparent,),
            const SafeSafaiBrandTitleWithVerifiedIcon(title: 'Adidas', brandTextSize: TextSizes.medium,),

          ],
        )
      ],
    );
  }
}
