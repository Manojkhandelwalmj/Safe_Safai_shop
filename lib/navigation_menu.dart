import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/features/personalization/screens/settings/settings.dart';
import 'package:safe_safai_shop/features/shop/screens/home/home.dart';
import 'package:safe_safai_shop/features/shop/screens/store/store.dart';
import 'package:safe_safai_shop/features/shop/screens/wishlist/wishlist.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = SafeSafaiHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) => controller.selectedIndex.value = index,
            backgroundColor: darkMode? SafeSafaiColors.black: SafeSafaiColors.white,
            indicatorColor: darkMode? SafeSafaiColors.white.withOpacity(0.1): SafeSafaiColors.dark.withOpacity(0.1),
            destinations: [
              const NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              const NavigationDestination(
                  icon: Icon(Icons.storefront), label: "Shop"),
              const NavigationDestination(
                  icon: Icon(CupertinoIcons.heart), label: "Whishlist"),
              const NavigationDestination(
                  icon: Icon(Icons.person), label: "Profile"),
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];
}