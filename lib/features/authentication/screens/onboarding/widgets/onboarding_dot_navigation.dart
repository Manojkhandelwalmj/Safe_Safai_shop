import 'package:flutter/material.dart';
import 'package:safe_safai_shop/features/authentication/controllers.onboarding/onboarding_controllers.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/device/device_utility.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: SafeSafaiDeviceUtils.getBottomNavigationBarHeight(),
        left: SafeSafaiSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark? SafeSafaiColors.light: SafeSafaiColors.dark, dotHeight: 8),
        ));
  }
}
