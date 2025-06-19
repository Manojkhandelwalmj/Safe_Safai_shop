import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/device/device_utility.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SafeSafaiAppBar(
      {super.key,
      this.title,
      this.actions,
      this.leadingIcon,
      this.leadingOnPressed,
      this.showBackArrow = false,
      });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SafeSafaiSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(onPressed: () => Get.back(), icon: Icon (Icons.arrow_back_ios_new, color: dark? SafeSafaiColors.white: SafeSafaiColors.dark))
            : leadingIcon != null
            ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
            : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(SafeSafaiDeviceUtils.getAppBarHeight());
}
