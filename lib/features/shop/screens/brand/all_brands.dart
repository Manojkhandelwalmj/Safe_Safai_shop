import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/common/widgets/brands/brand_cart.dart';
import 'package:safe_safai_shop/common/widgets/layouts/grid_layout.dart';
import 'package:safe_safai_shop/common/widgets/products/sortable/sortable_products.dart';
import 'package:safe_safai_shop/common/widgets/texts/section_heading.dart';
import 'package:safe_safai_shop/features/shop/screens/brand/brand_products.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SafeSafaiAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SafeSafaiSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              SafeSafaiSectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwItems,
              ),

              /// -- Brands
              SafeSafaiGridLayout(
                  itemCount: 9,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => SafeSafaiBrandCard(
                        showBorder: true,
                        onTap: () =>
                            Get.to(() => const BrandProducts()),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
