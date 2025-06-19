import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/common/styles/spacing_styles.dart';
import 'package:safe_safai_shop/common/widgets/login_signup/form_divider.dart';
import 'package:safe_safai_shop/common/widgets/login_signup/social_buttons.dart';
import 'package:safe_safai_shop/features/authentication/screens/login/widgets/login_form.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/constants/text_strings.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';
import 'package:safe_safai_shop/features/authentication/screens/login/widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SafeSafaiSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Logo, Title & Subtitle
              SafeSafaiLoginHeader(dark: dark),
              /// Form
              SafeSafaiLoginForm(),

              /// Divider
              SafeSafaiFormDivider(dividerText: SafeSafaiTexts.orSignInWith.capitalize!,),
              const SizedBox(height: SafeSafaiSizes.spaceBtwSections,),
              /// Footer
              SafeSafaiSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}








