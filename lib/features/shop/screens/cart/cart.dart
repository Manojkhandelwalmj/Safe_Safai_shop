import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:safe_safai_shop/features/shop/screens/checkout/checkout.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SafeSafaiAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: EdgeInsets.all(SafeSafaiSizes.defaultSpace),

        /// -- Items in cart
        child: SafeSafaiCartItems(),
      ),


      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SafeSafaiSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(()=> const CheckoutScreen()), child: Text('Checkout ₹1996')),
      ),
    );
  }
}




