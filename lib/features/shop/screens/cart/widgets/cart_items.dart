import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/products/cart/add_remove_button.dart';
import 'package:safe_safai_shop/common/widgets/products/cart/cart_item.dart';
import 'package:safe_safai_shop/common/widgets/texts/product_price_text.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class SafeSafaiCartItems extends StatelessWidget {
  const SafeSafaiCartItems({
    super.key,this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: SafeSafaiSizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          /// Cart Item
          SafeSafaiCartItem(),
          if(showAddRemoveButtons) const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),

          /// Add Remove Button Row with total Price
          if(showAddRemoveButtons)
            const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// Extra Space
                  SizedBox(width: 70,),
                  /// Add Remove Buttons
                  SafeSafaiProductQuantityWithAddRemoveButton(),
                ],
              ),
              /// -- Product total Price
              SafeSafaiProductPriceText(price: '499'),
            ],
          )
        ],
      ),
    );
  }
}