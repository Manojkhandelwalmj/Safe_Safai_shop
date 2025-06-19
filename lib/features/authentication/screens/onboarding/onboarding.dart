import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/features/authentication/controllers/onboarding/onboarding_controllers.dart';
import 'package:safe_safai_shop/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:safe_safai_shop/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:safe_safai_shop/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:safe_safai_shop/features/authentication/screens/onboarding/widgets/onboarding_skip_button.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,// we can also pass controller.updatePageIndicator(index) it will be same
            children: [
              OnBoardingPage(
                image: SafeSafaiImages.onBoardingImage1,
                subTitle: SafeSafaiTexts.onBoardingSubTitle1,
                title: SafeSafaiTexts.onBoardingTitle1,
              ),
              OnBoardingPage(
                  image: SafeSafaiImages.onBoardingImage2,
                  title: SafeSafaiTexts.onBoardingTitle2,
                  subTitle: SafeSafaiTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: SafeSafaiImages.onBoardingImage3,
                  title: SafeSafaiTexts.onBoardingTitle3,
                  subTitle: SafeSafaiTexts.onBoardingSubTitle3),
            ],
          ),

          /// Skip Button
          const OnBoardingSkipButton(),

          /// Dot Navigation SmoothPageIndicator

          const OnBoardingDotNavigation(),

          /// Circular Button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}


