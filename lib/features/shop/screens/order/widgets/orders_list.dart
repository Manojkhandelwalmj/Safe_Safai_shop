import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiOrderListItems extends StatelessWidget {
  const SafeSafaiOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 8,
      separatorBuilder: (_, index) => const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),
      itemBuilder: (_,index)=> SafeSafaiRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(SafeSafaiSizes.md),
        backgroundColor: dark ? SafeSafaiColors.dark : SafeSafaiColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
      
            /// Row 1
            Row(
              children: [
                /// 1 - Icon
                Icon(Icons.local_shipping),
                const SizedBox(
                  width: SafeSafaiSizes.spaceBtwItems / 2,
                ),
      
                /// 2 - Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: SafeSafaiColors.primary, fontWeightDelta: 1),
                      ),
                      Text('07 June 2025',style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),
                /// 3 - Icon
                IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_right,))
              ],
            ),
            const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),
      
            /// Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// 1 - Icon
                      Icon(Icons.shopping_bag),
                      const SizedBox(
                        width: SafeSafaiSizes.spaceBtwItems / 2,
                      ),
      
                      /// 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order Id',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text('#716ji',style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      /// 1 - Icon
                      Icon(Icons.calendar_month),
                      const SizedBox(
                        width: SafeSafaiSizes.spaceBtwItems / 2,
                      ),
      
                      /// 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text('06 june 2025',style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
