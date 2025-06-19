import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:safe_safai_shop/common/widgets/images/safesafai_circular_image.dart';
import 'package:safe_safai_shop/common/widgets/texts/safesafai_brand_title_text_with_verified_icon.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/enums.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiBrandCard extends StatelessWidget {
  const SafeSafaiBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = SafeSafaiHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,

      /// Container Design
      child: SafeSafaiRoundedContainer(
        padding: const EdgeInsets.all(SafeSafaiSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// -- Icon
            Flexible(
              child: SafeSafaiCircularImage(
                isNetworkImage: false,
                image: SafeSafaiImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor:
                isDark ? SafeSafaiColors.white : SafeSafaiColors.black,
              ),
            ),
            const SizedBox(
              width: SafeSafaiSizes.spaceBtwItems / 2,
            ),

            /// -- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SafeSafaiBrandTitleWithVerifiedIcon(
                    title: 'Adidias',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
