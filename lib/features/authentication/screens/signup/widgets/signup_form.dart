import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/features/authentication/screens/signup/verify_email.dart';
import 'package:safe_safai_shop/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/constants/text_strings.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiSignupForm extends StatelessWidget {
  const SafeSafaiSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: SafeSafaiTexts.firstName,
                        prefixIcon: Icon(Icons.person)),
                  ),
                ),
                const SizedBox(
                  width: SafeSafaiSizes.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: SafeSafaiTexts.lastName,
                        prefixIcon: Icon(Icons.person)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: SafeSafaiSizes.spaceBtwInputFields,
            ),

            /// Username
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: SafeSafaiTexts.username,
                  prefixIcon: Icon(Icons.account_circle_outlined)),
            ),
            const SizedBox(
              height: SafeSafaiSizes.spaceBtwInputFields,
            ),

            /// Email
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: SafeSafaiTexts.email,
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(
              height: SafeSafaiSizes.spaceBtwInputFields,
            ),

            /// Phone Number
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: SafeSafaiTexts.phoneNo,
                  prefixIcon: Icon(Icons.phone)),
            ),
            const SizedBox(
              height: SafeSafaiSizes.spaceBtwInputFields,
            ),

            /// Password
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: SafeSafaiTexts.password,
                prefixIcon: Icon(Icons.lock_outline_rounded),
                suffixIcon: Icon(CupertinoIcons.eye_slash),
              ),
            ),
            const SizedBox(
              height: SafeSafaiSizes.spaceBtwInputFields,
            ),

            /// Term & Condition Check box
            SafeSafaiTermsAndConditionCheckBox(),
            const SizedBox(
              height: SafeSafaiSizes.spaceBtwSections,
            ),

            /// Sign Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const VerifyEmailScreen()),
                  child: const Text(SafeSafaiTexts.createAccount)),
            ),
          ],
        ));
  }
}

