import 'package:flutter/material.dart';

import 'package:safe_safai_shop/common/widgets/layouts/grid_layout.dart';

import 'package:safe_safai_shop/common/widgets/products/product_cards/product_card_vertical.dart';

import 'package:safe_safai_shop/utils/constants/sizes.dart';

class SafeSafaiSortableProducts extends StatelessWidget {
  const SafeSafaiSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown

        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Icons.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Price: High to Low',
            'Price: Low to High',
            'Latest',
            'Newest',
            'Relevant',
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),

        const SizedBox(
          height: SafeSafaiSizes.spaceBtwSections,
        ),

        /// - Products

        SafeSafaiGridLayout(
            itemCount: 4,
            itemBuilder: (_, index) => const SafeSafaiProductCardVertical())
      ],
    );
  }
}
