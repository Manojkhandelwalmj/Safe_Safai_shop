import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/features/personalization/screens/address/add_new_address.dart';
import 'package:safe_safai_shop/features/personalization/screens/address/widgets/single_address.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: SafeSafaiColors.primary,
        child: Icon(Icons.add, color: SafeSafaiColors.white,),
      ),

      /// Appbar
      appBar: SafeSafaiAppBar(
        showBackArrow: true,
        title: Text('Addresses', style: Theme.of(context).textTheme.headlineSmall,),
      ),

      /// body
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(SafeSafaiSizes.defaultSpace),
        child: Column(
          children: [
            SafeSafaiSingleAddress(selectedAddress: true,),
            SafeSafaiSingleAddress(selectedAddress: false,),
          ],
        ),),
      ),
    );
  }
}
