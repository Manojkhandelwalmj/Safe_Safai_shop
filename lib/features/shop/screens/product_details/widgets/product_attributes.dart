import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/chips/choice_chip.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:safe_safai_shop/common/widgets/texts/product_title_text.dart';
import 'package:safe_safai_shop/common/widgets/texts/section_heading.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiProductAttributes extends StatelessWidget {
  const SafeSafaiProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        SafeSafaiRoundedContainer(
          padding: EdgeInsets.all(SafeSafaiSizes.md),
          backgroundColor:
              dark ? SafeSafaiColors.darkerGrey : SafeSafaiColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  SafeSafaiSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: SafeSafaiSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SafeSafaiProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),

                          /// Actual Price
                          Text(
                            '₹5000',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: SafeSafaiSizes.spaceBtwItems,
                          ),

                          /// Sale Price
                          SafeSafaiProductTitleText(title: '₹2500'),
                        ],
                      ),

                      /// stock
                      Row(
                        children: [
                          const SafeSafaiProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'In stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),

              /// variation discription
              SafeSafaiProductTitleText(
                title:
                    'This is the Description of Product and it can go upto max 4 lines',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),

        /// -- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeSafaiSectionHeading(title: 'Colors', showActionButton: false,),
        const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),
            Wrap(
              spacing: 8,
              children: [
              SafeSafaiChoiceChip(selected: true, text: 'Green',onSelected: (value){}),
              SafeSafaiChoiceChip(selected: false, text: 'Blue',onSelected: (value){}),
              SafeSafaiChoiceChip(selected: false, text: 'Red',onSelected: (value){}),
              SafeSafaiChoiceChip(selected: false, text: 'Yellow',onSelected: (value){}),
              SafeSafaiChoiceChip(selected: false, text: 'Pink',onSelected: (value){}),
              SafeSafaiChoiceChip(selected: false, text: 'White',onSelected: (value){}),
            ],)
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeSafaiSectionHeading(title: 'Size', showActionButton: false,),
            const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),
            Wrap(
              spacing: 8,
              children: [
                SafeSafaiChoiceChip(selected: true, text: 'EU 32',onSelected: (value){}),
                SafeSafaiChoiceChip(selected: false, text: 'EU 34',onSelected: (value){}),
                SafeSafaiChoiceChip(selected: false, text: 'EU 36',onSelected: (value){}),
                SafeSafaiChoiceChip(selected: false, text: 'EU 32',onSelected: (value){}),
                SafeSafaiChoiceChip(selected: false, text: 'EU 34',onSelected: (value){}),
                SafeSafaiChoiceChip(selected: false, text: 'EU 36',onSelected: (value){}),
              ],
            )
          ],
        )
      ],
    );
  }
}


