import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/features/shop/screens/cart/cart.dart';

class SafeSafaiCartCounterIcon extends StatelessWidget {
  const SafeSafaiCartCounterIcon(
      {super.key,this.iconColor, required this.onPressed});

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () => Get.to(()=> const CartScreen()),
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: iconColor,
            )),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              '2',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: Colors.white, fontSizeFactor: 0.7),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}