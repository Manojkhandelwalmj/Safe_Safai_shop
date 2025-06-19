import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/constants/text_strings.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiTermsAndConditionCheckBox extends StatelessWidget {
  const SafeSafaiTermsAndConditionCheckBox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: SafeSafaiSizes.spaceBtwItems,
        ),
        Flexible(
          child: Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: '${SafeSafaiTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: '${SafeSafaiTexts.privacyPolicy} ',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(
                    color: dark
                        ? SafeSafaiColors.white
                        : SafeSafaiColors.darkGrey,
                    decorationColor: dark
                        ? SafeSafaiColors.white
                        : SafeSafaiColors.darkGrey),
              ),
              TextSpan(
                  text: '${SafeSafaiTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: '${SafeSafaiTexts.termsOfUse}.',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(
                    color: dark
                        ? SafeSafaiColors.white
                        : SafeSafaiColors.darkGrey,
                    decorationColor: dark
                        ? SafeSafaiColors.white
                        : SafeSafaiColors.darkGrey),
              ),
            ]),
          ),
        )
      ],
    );
  }
}