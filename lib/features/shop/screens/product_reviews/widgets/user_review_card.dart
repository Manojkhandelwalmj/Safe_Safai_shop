import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:safe_safai_shop/common/widgets/products/ratings/rating_indicator.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});


  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(SafeSafaiImages.user),
                ),
                const SizedBox(
                  width: SafeSafaiSizes.spaceBtwItems,
                ),
                Text(
                  'Happy Singh',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          height: SafeSafaiSizes.spaceBtwItems,
        ),

        /// Reviews
        Row(
          children: [
            SafeSafaiRatingBarIndicator(rating: 5),
            const SizedBox(
              width: SafeSafaiSizes.spaceBtwItems,
            ),
            Text(
              '01 March, 2025',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: SafeSafaiSizes.spaceBtwItems,
        ),
        ReadMoreText(
          'I loved the user Interface of the App, it is very Unique and easy to understand also works very fine and faster than other apps. I definetly recommand this app to every that they use this for great products without any lag.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show less',
          trimCollapsedText: 'Show more',
          moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: SafeSafaiColors.primary),
          lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: SafeSafaiColors.primary),
        ),
        const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),

        /// Company Review Reply
        SafeSafaiRoundedContainer(
          backgroundColor: dark ? SafeSafaiColors.darkerGrey: SafeSafaiColors.grey,
          child: Padding(padding: EdgeInsets.all(SafeSafaiSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('SafeSafai', style: Theme.of(context).textTheme.titleMedium),
                  Text('05 March, 2025', style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwItems,
              ),
              ReadMoreText(
                'Thank You for your Helpful review, we love to provide great services to our users andd will provide these type of services in future.',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimExpandedText: 'Show less',
                trimCollapsedText: 'Show more',
                moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: SafeSafaiColors.primary),
                lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: SafeSafaiColors.primary),
              ),
            ],
          ),
          ),
        ),
        const SizedBox(height: SafeSafaiSizes.spaceBtwSections,),
      ],
    );
  }
}
