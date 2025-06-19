import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:safe_safai_shop/common/widgets/texts/section_heading.dart';
import 'package:safe_safai_shop/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:safe_safai_shop/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:safe_safai_shop/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:safe_safai_shop/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:safe_safai_shop/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:safe_safai_shop/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: SafeSafaiBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            const SafeSafaiProductImageSlider(),

            ///  2 - Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: SafeSafaiSizes.defaultSpace,
                  left: SafeSafaiSizes.defaultSpace,
                  bottom: SafeSafaiSizes.defaultSpace),
              child: Column(
                children: [
                  /// - Ratings & share Button
                  const SafeSafaiRatingAndShare(),

                  /// - Price, Title, Stock, & Brand
                  const SafeSafaiProductMetaData(),

                  /// -- Attributes
                  const SafeSafaiProductAttributes(),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwSections,
                  ),

                  /// -- Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwItems,
                  ),

                  /// - Discription
                  const SafeSafaiSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  ReadMoreText(
                    'Adidas men running shoes with 1 year of brand warrenty and also available in multiple colors| packed and marketed by adidas shoes',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.green),
                    lessStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.green),
                  ),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwItems,
                  ),

                  /// - Reviews
                  Divider(),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SafeSafaiSectionHeading(
                        title: 'Reviews(199)',
                        onPressed: () {},
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: Icon(Icons.arrow_right))
                    ],
                  ),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
