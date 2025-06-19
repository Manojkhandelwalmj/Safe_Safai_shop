
import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/common/widgets/products/ratings/rating_indicator.dart';
import 'package:safe_safai_shop/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:safe_safai_shop/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// - Appbar
      appBar: SafeSafaiAppBar(
        title: Text('Reviews & Ratings',style: TextStyle(color: SafeSafaiHelperFunctions.isDarkMode(context) ? SafeSafaiColors.white: SafeSafaiColors.dark),),
        showBackArrow: true,
      ),

      /// --- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SafeSafaiSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Ratings & Reviews are Verified and from only genuine peoples who actually bought the product'),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwItems,
              ),

              /// Overall Product Ratings in 1-5 bars
              const SafeSafaiOverallProductRating(),

              /// Star Rating indicator
              const SafeSafaiRatingBarIndicator(rating: 4.5,),
              Text("12,116", style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: SafeSafaiSizes.spaceBtwSections,),

              /// User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}


