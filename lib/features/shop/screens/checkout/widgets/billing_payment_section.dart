import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:safe_safai_shop/common/widgets/texts/section_heading.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiBillingPaymentSection extends StatelessWidget {
  const SafeSafaiBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SafeSafaiSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(
          height: SafeSafaiSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            SafeSafaiRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? SafeSafaiColors.light: SafeSafaiColors.white,
              padding: EdgeInsets.all(SafeSafaiSizes.sm),
              child: const Image(image: AssetImage(SafeSafaiImages.paypal),fit: BoxFit.contain,),
            ),
            const SizedBox(width: SafeSafaiSizes.spaceBtwItems/2,),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge,),

          ],
        )
      ],
    );
  }
}
