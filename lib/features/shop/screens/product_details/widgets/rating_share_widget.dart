import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class SafeSafaiRatingAndShare extends StatelessWidget {
  const SafeSafaiRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Ratings
        Row(
          children: [
            Icon(Icons.stars,color: Colors.amber,size: 24,),
            SizedBox(width: SafeSafaiSizes.spaceBtwItems / 2),
            Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: '4.5', style: Theme.of(context).textTheme.bodyLarge),
                      TextSpan(text: '(199)')
                    ]
                )
            ),
          ],
        ),
        /// Share Button
        IconButton(onPressed: (){}, icon: Icon(Icons.share, size: SafeSafaiSizes.iconsMd,)),

      ],
    );
  }
}