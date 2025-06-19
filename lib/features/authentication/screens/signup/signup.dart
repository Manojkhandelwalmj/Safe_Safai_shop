import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/common/widgets/login_signup/form_divider.dart';
import 'package:safe_safai_shop/common/widgets/login_signup/social_buttons.dart';
import 'package:safe_safai_shop/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/constants/text_strings.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SafeSafaiSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                SafeSafaiTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwSections,
              ),

              /// Form
              SafeSafaiSignupForm(),
              const SizedBox(height: SafeSafaiSizes.spaceBtwSections,),
              /// Divider
              SafeSafaiFormDivider(dividerText: SafeSafaiTexts.orSignUpWith.capitalize!),
              const SizedBox(height: SafeSafaiSizes.spaceBtwSections,),
              /// Social Buttons
              const SafeSafaiSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


