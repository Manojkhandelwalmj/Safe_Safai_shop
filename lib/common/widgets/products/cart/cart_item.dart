import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/images/safesafai_rounded_image.dart';
import 'package:safe_safai_shop/common/widgets/texts/product_title_text.dart';
import 'package:safe_safai_shop/common/widgets/texts/safesafai_brand_title_text_with_verified_icon.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiCartItem extends StatelessWidget {
  const SafeSafaiCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        SafeSafaiRoundedImage(
          imageUrl: SafeSafaiImages.productImage2,
          width: 60,
          height: 60,
          paddinng: const EdgeInsets.all(SafeSafaiSizes.sm),
          backgroundColor:
          SafeSafaiHelperFunctions.isDarkMode(context)
              ? SafeSafaiColors.darkerGrey
              : SafeSafaiColors.light,
        ),
        const SizedBox(
          width: SafeSafaiSizes.spaceBtwItems,
        ),

        /// Title, Price, & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SafeSafaiBrandTitleWithVerifiedIcon(
                  title: 'Puma'),
              Flexible(
                child: const SafeSafaiProductTitleText(
                  title: 'Black T-shirt Women',
                  maxLines: 1,
                ),
              ),

              /// Attributes
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color: ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Black ',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size: ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'M ',
                    style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}