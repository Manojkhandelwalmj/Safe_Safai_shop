import 'package:flutter/material.dart';
import 'package:safe_safai_shop/features/authentication/controllers.onboarding/onboarding_controllers.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/device/device_utility.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: SafeSafaiDeviceUtils.getBottomNavigationBarHeight(),
      right: SafeSafaiSizes.defaultSpace,
      child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: dark? SafeSafaiColors.light : SafeSafaiColors.dark),
          child: Icon(
            Icons.arrow_forward_ios,
            color: dark? SafeSafaiColors.dark : SafeSafaiColors.light,
          )),
    );
  }
}