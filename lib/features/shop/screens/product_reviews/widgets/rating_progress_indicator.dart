import 'package:flutter/material.dart';
import 'package:safe_safai_shop/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';

class SafeSafaiOverallProductRating extends StatelessWidget {
  const SafeSafaiOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3,child: Text('4.8', style: Theme.of(context).textTheme.displayLarge,)),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              const SafeSafaiRatingProgressIndicator(text: '5', value: 0.65,),
              const SafeSafaiRatingProgressIndicator(text: '4', value: 0.2,),
              const SafeSafaiRatingProgressIndicator(text: '3', value: 0.1,),
              const SafeSafaiRatingProgressIndicator(text: '2', value: 0,),
              const SafeSafaiRatingProgressIndicator(text: '1', value: 0.15,),
            ],
          ),
        )
      ],
    );
  }
}
