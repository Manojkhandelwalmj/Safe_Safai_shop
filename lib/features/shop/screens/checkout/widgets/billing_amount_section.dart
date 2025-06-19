import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class SafeSafaiBillingAmountSection extends StatelessWidget {
  const SafeSafaiBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium,),
            Text('₹1996.00', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: SafeSafaiSizes.spaceBtwItems/2,),
        /// shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('₹0.00', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: SafeSafaiSizes.spaceBtwItems/2,),
        /// Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('₹378.00', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: SafeSafaiSizes.spaceBtwItems/2,),
        /// Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium,),
            Text('₹2372.00', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
      ],
    );
  }
}
