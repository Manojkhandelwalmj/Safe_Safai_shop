import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/common/widgets/brands/brand_cart.dart';
import 'package:safe_safai_shop/common/widgets/products/sortable/sortable_products.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SafeSafaiAppBar(
        title: Text('Adidas'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SafeSafaiSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Details
              SafeSafaiBrandCard(showBorder: true),
              const SizedBox(height: SafeSafaiSizes.spaceBtwSections,),

              SafeSafaiSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
