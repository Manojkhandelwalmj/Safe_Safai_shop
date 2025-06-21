import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:safe_safai_shop/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:safe_safai_shop/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:safe_safai_shop/common/widgets/texts/section_heading.dart';
import 'package:safe_safai_shop/data/repositories/authentication/authentication_repository.dart';
import 'package:safe_safai_shop/features/personalization/screens/address/address.dart';
import 'package:safe_safai_shop/features/personalization/screens/profile/profile.dart';
import 'package:safe_safai_shop/features/shop/screens/order/order.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            SafeSafaiPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// App Bar
                  SafeSafaiAppBar(
                      title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: SafeSafaiColors.white),
                  )),

                  /// User Profile Card
                  SafeSafaiUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen()),),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwSections,
                  )
                ],
              ),
            ),

            /// -- Body
            Padding(
              padding: const EdgeInsets.all(SafeSafaiSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Account Settings
                  SafeSafaiSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwItems,
                  ),

                  SafeSafaiSettingsMenuTile(
                    icon: Icons.location_city,
                    title: 'Address',
                    subtitle: 'Add Your Delivery address',
                    onTap: ()=> Get.to(()=> const UserAddressScreen()),
                  ),
                  SafeSafaiSettingsMenuTile(
                    icon: Icons.shopping_cart_rounded,
                    title: 'Cart',
                    subtitle: 'Chekout Your added Products in Cart',
                    onTap: () {},
                  ),
                  SafeSafaiSettingsMenuTile(
                    icon: Icons.checklist_sharp,
                    title: 'My Orders',
                    subtitle: 'Status of all orders',
                    onTap: ()=> Get.to(()=> const OrderScreen()),
                  ),
                  SafeSafaiSettingsMenuTile(
                    icon: Icons.account_balance,
                    title: 'Bank Details',
                    subtitle: 'Update Bank Details',
                    onTap: () {},
                  ),
                  SafeSafaiSettingsMenuTile(
                    icon: Icons.card_giftcard,
                    title: 'My Coupons',
                    subtitle: 'Use Coupons for shopping',
                    onTap: () {},
                  ),
                  SafeSafaiSettingsMenuTile(
                    icon: Icons.notifications_active,
                    title: 'Notifications',
                    subtitle: 'Update your Notification Settings',
                    onTap: () {},
                  ),
                  SafeSafaiSettingsMenuTile(
                    icon: Icons.safety_check,
                    title: 'Account Privacy',
                    subtitle: 'Change or Update Your account Privacy',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwSections,
                  ),

                  /// -- App Settings
                  SafeSafaiSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwItems,
                  ),

                  SafeSafaiSettingsMenuTile(
                    icon: Icons.upload_file_rounded,
                    title: 'Upload Documents',
                    subtitle: 'Change or Update Your account Privacy',
                    onTap: () {},
                  ),
                  SafeSafaiSettingsMenuTile(
                    icon: Icons.location_on_rounded,
                    title: 'Location',
                    subtitle: 'Allow Location for better Results',
                    onTap: () {},
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SafeSafaiSettingsMenuTile(
                    icon: Icons.security_update_good_rounded,
                    title: 'Safe Mode',
                    subtitle: 'Switch to Safe Mode',
                    onTap: () {},
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SafeSafaiSettingsMenuTile(
                    icon: Icons.image,
                    title: 'High Quality Mode',
                    subtitle: 'Cosume more data in High Quality Mode',
                    onTap: () {},
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwSections,
                  ),

                  /// -- Logout Button
                  SizedBox(
                    width: double.infinity,
                    child:
                        OutlinedButton(onPressed: () => AuthenticationRepository.instance.logout(), child: Text('Logout')),
                  ),
                  const SizedBox(
                    height: SafeSafaiSizes.spaceBtwSections * 2.5,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
