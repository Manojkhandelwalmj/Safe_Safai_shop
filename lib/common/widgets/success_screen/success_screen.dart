import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/styles/spacing_styles.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/constants/text_strings.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});
  final String image,title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: SafeSafaiSpacingStyle.paddingWithAppBarHeight*2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Images
            Image(
              image: AssetImage(image),
              width: SafeSafaiHelperFunctions.screenWidth() * 0.6,
              alignment: Alignment.center,
            ),
            const SizedBox(
              height: SafeSafaiSizes.spaceBtwSections,
            ),

            /// Title & Subtitle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: SafeSafaiSizes.spaceBtwItems,
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: SafeSafaiSizes.spaceBtwSections,
            ),

            /// Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(SafeSafaiTexts.safeSafaiContinue)),
            ),
          ],
        ),),
      ),
    );
  }
}
