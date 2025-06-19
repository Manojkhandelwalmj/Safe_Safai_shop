import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:safe_safai_shop/common/widgets/layouts/grid_layout.dart';
import 'package:safe_safai_shop/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:safe_safai_shop/common/widgets/texts/section_heading.dart';
import 'package:safe_safai_shop/features/shop/screens/all_products/all_products.dart';
import 'package:safe_safai_shop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:safe_safai_shop/features/shop/screens/home/widgets/home_categories.dart';
import 'package:safe_safai_shop/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeSafaiPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- Home Screen AppBar
                  const SafeSafaiHomeAppBar(),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwSections,
                  ),

                  /// -- Search Bar
                  SafeSafaiSearchContainer(
                    onTap: () {},
                    text: 'Search...',
                  ),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwSections,
                  ),

                  /// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: SafeSafaiSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// heading
                        SafeSafaiSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: dark
                              ? SafeSafaiColors.black
                              : SafeSafaiColors.white,
                        ),
                        const SizedBox(
                          height: SafeSafaiSizes.spaceBtwItems,
                        ),

                        /// Categories
                        SafeSafaiHomeCategory(),
                        const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),
                      ],
                    ),
                  ),
                  const SizedBox(height: SafeSafaiSizes.spaceBtwSections,),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(SafeSafaiSizes.defaultSpace),
              child: Column(
                children: [
                  /// --Promo Slider Banners
                  SafeSafaiPromoSlider(
                    banners: [
                      SafeSafaiImages.promoBanner1,
                      SafeSafaiImages.promoBanner2,
                      SafeSafaiImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwSections,
                  ),
                  /// --Heading
                  SafeSafaiSectionHeading(title: "Popular Products", onPressed: () => Get.to(() => const AllProducts()),),
                  const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),
                  /// -- Popular Products
                  SafeSafaiGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const SafeSafaiProductCardVertical(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
