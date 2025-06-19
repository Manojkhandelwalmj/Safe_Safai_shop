import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/brands/brand_cart.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiBrandShowcase extends StatelessWidget {
  const SafeSafaiBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SafeSafaiRoundedContainer(
      showBorder: true,
      borderColor: SafeSafaiColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(SafeSafaiSizes.md),
      margin: const EdgeInsets.only(bottom: SafeSafaiSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brands with Products Count
          const SafeSafaiBrandCard(showBorder: false),
          const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),

          /// Brand Top 3 Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
      child: SafeSafaiRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(SafeSafaiSizes.md),
        backgroundColor: SafeSafaiHelperFunctions.isDarkMode(context)
            ? SafeSafaiColors.darkerGrey
            : SafeSafaiColors.light,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ));
}