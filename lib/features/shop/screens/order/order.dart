import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/features/shop/screens/order/widgets/orders_list.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// -- AppBar
      appBar: SafeSafaiAppBar(title: Text('My Orders', style: Theme
          .of(context)
          .textTheme
          .headlineSmall,),showBackArrow: true,),
      body: const Padding(padding: EdgeInsets.all(SafeSafaiSizes.defaultSpace),

        /// -- Orders
        child: SafeSafaiOrderListItems(),
      ),
    );
  }
}
