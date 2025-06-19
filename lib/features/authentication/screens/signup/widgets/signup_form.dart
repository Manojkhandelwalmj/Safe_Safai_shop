import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/features/authentication/controllers/signup/signup_controller.dart';
import 'package:safe_safai_shop/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/constants/text_strings.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';
import 'package:safe_safai_shop/utils/validators/validation.dart';

class SafeSafaiSignupForm extends StatelessWidget {
  const SafeSafaiSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final dark = SafeSafaiHelperFunctions.isDarkMode(context);
    return Form(
        key: controller.signupFormKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller.firstName,
                    validator: (value) => SafeSafaiValidator.validateEmptyText(
                        'First Name', value),
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
                    controller: controller.lastName,
                    validator: (value) => SafeSafaiValidator.validateEmptyText(
                        'Last Name', value),
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
              controller: controller.username,
              validator: (value) =>
                  SafeSafaiValidator.validateEmptyText('Username', value),
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
              controller: controller.email,
              validator: (value) => SafeSafaiValidator.validateEmail(value),
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
              controller: controller.phoneNumber,
              validator: (value) =>
                  SafeSafaiValidator.validatePhoneNumber(value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: SafeSafaiTexts.phoneNo,
                  prefixIcon: Icon(Icons.phone)),
            ),
            const SizedBox(
              height: SafeSafaiSizes.spaceBtwInputFields,
            ),

            /// Password
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) =>
                    SafeSafaiValidator.validatePassword(value),
                expands: false,
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  labelText: SafeSafaiTexts.password,
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value ? CupertinoIcons.eye_slash : CupertinoIcons.eye),
                  ),
                ),
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
                  onPressed: () => controller.signup(),
                  child: const Text(SafeSafaiTexts.createAccount)),
            ),
          ],
        ));
  }
}
