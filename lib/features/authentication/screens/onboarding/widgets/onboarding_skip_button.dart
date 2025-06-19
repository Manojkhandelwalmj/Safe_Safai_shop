import 'package:flutter/material.dart';
import 'package:safe_safai_shop/features/authentication/controllers.onboarding/onboarding_controllers.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/device/device_utility.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: SafeSafaiDeviceUtils.getAppBarHeight(),
        right: SafeSafaiSizes.defaultSpace,
        child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: const Text('SKIP')));
  }
}
