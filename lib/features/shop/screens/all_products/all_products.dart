import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/common/widgets/layouts/grid_layout.dart';
import 'package:safe_safai_shop/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:safe_safai_shop/common/widgets/products/sortable/sortable_products.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SafeSafaiAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SafeSafaiSizes.defaultSpace),
          child: SafeSafaiSortableProducts(),
        ),
      ),
    );
  }
}


