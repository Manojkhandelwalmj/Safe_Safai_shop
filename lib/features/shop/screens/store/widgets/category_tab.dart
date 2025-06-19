import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/brands/brand_show_case.dart';
import 'package:safe_safai_shop/common/widgets/layouts/grid_layout.dart';
import 'package:safe_safai_shop/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:safe_safai_shop/common/widgets/texts/section_heading.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class SafeSafaiCategoryTab extends StatelessWidget {
  const SafeSafaiCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),

      children: [
        Padding(
          padding: const EdgeInsets.all(SafeSafaiSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Brands
              const SafeSafaiBrandShowcase(images: [SafeSafaiImages.productImage1,SafeSafaiImages.productImage1]),
              const SafeSafaiBrandShowcase(images: [SafeSafaiImages.productImage2,SafeSafaiImages.productImage1]),
              const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),

              /// --- Products
              SafeSafaiSectionHeading(title: 'You might like', onPressed: (){}),
              const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),

              SafeSafaiGridLayout(itemCount: 4, itemBuilder: (_, index) => SafeSafaiProductCardVertical()),
              const SizedBox(height: SafeSafaiSizes.spaceBtwSections,),

            ],
          ),
        ),
      ],
    );
  }
}
