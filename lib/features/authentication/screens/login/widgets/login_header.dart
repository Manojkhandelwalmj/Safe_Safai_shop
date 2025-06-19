import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/constants/text_strings.dart';

class SafeSafaiLoginHeader extends StatelessWidget {
  const SafeSafaiLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark
              ? SafeSafaiImages.lightAppLogo
              : SafeSafaiImages.darkAppLogo),
        ),
        Text(
          SafeSafaiTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: SafeSafaiSizes.sm,
        ),
        Text(
          SafeSafaiTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),


      ],
    );
  }
}