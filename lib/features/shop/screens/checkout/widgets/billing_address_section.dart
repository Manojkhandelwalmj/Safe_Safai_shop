import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/texts/section_heading.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class SafeSafaiBillingAddressSection extends StatelessWidget {
  const SafeSafaiBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeSafaiSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Safe Safai', style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: SafeSafaiSizes.spaceBtwItems/2,),
        Row(
          children: [
            Icon(Icons.call, color: Colors.grey,size: 16,),
            const SizedBox(width: SafeSafaiSizes.spaceBtwItems,),
            Text('+(91) 6367936385', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(width: SafeSafaiSizes.spaceBtwItems/2,),
        Row(
          children: [
            Icon(Icons.location_city, color: Colors.grey,size: 16,),
            const SizedBox(width: SafeSafaiSizes.spaceBtwItems,),
            Text('Hostel, UCE Banswara', style: Theme.of(context).textTheme.bodyMedium,softWrap: true,),
          ],
        ),
      ],
    );
  }
}
