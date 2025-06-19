import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/common/widgets/icons/safesafai_circular_icon.dart';
import 'package:safe_safai_shop/common/widgets/layouts/grid_layout.dart';
import 'package:safe_safai_shop/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:safe_safai_shop/features/shop/screens/home/home.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SafeSafaiAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          SafeSafaiCircularIcon(icon: Icons.add, onPressed: () => Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(SafeSafaiSizes.defaultSpace),
        child: Column(
          children: [
            SafeSafaiGridLayout(itemCount: 6, itemBuilder: (_,index) => const SafeSafaiProductCardVertical())
          ],
        ),
        ),
      ),
    );
  }
}
