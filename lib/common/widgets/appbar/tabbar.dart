import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/device/device_utility.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiTabBar extends StatelessWidget implements PreferredSizeWidget{
  /// If you want to add the background Color to tabs You have to wrap them in Material Widget.
  /// To do that we neee [PreferredSize] Widget and that's why I created custom class. [PreferredSizeWidget] 🔝↖️
  const SafeSafaiTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? SafeSafaiColors.black: SafeSafaiColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: SafeSafaiColors.primary,
        labelColor: dark ? SafeSafaiColors.white : SafeSafaiColors.primary,
        unselectedLabelColor: SafeSafaiColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SafeSafaiDeviceUtils.getAppBarHeight());
}
