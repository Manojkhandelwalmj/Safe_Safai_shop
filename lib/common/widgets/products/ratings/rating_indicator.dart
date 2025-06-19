import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';

class SafeSafaiRatingBarIndicator extends StatelessWidget {
  const SafeSafaiRatingBarIndicator({
    super.key, required this.rating,
  });

  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 20,
        unratedColor: SafeSafaiColors.grey,
        itemBuilder: (_, __) => Icon(
          Icons.star,
          color: SafeSafaiColors.primary,
        ));
  }
}