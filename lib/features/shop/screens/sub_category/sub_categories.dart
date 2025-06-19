import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/common/widgets/images/safesafai_rounded_image.dart';
import 'package:safe_safai_shop/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:safe_safai_shop/common/widgets/texts/section_heading.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class SubcategoriesScreen extends StatelessWidget {
  const SubcategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SafeSafaiAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SafeSafaiSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const SafeSafaiRoundedImage(
                imageUrl: SafeSafaiImages.promoBanner3,
                width: double.infinity,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwSections,
              ),

              /// Sub-Categories
              Column(
                children: [
                  /// Heading
                  SafeSafaiSectionHeading(
                    title: 'Sport Clothes',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwItems / 2,
                  ),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (context,index) => const SizedBox(width: SafeSafaiSizes.spaceBtwItems,),
                      itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            const SafeSafaiProductCardHorizontal()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
