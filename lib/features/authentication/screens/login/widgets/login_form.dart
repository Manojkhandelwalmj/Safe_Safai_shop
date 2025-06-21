import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/features/authentication/controllers/login/login_controller.dart';
import 'package:safe_safai_shop/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:safe_safai_shop/features/authentication/screens/signup/signup.dart';
import 'package:safe_safai_shop/navigation_menu.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/constants/text_strings.dart';
import 'package:safe_safai_shop/utils/validators/validation.dart';

class SafeSafaiLoginForm extends StatelessWidget {
  const SafeSafaiLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: SafeSafaiSizes.spaceBtwSections),
          child: Column(
            children: [
              /// Email
              TextFormField(
                controller: controller.email,
                validator: (value) => SafeSafaiValidator.validateEmail(value),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: SafeSafaiTexts.email,
                ),
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
                  height: SafeSafaiSizes.spaceBtwInputFields / 2),

              /// Remember me & Forgot Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Rememmber me
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.rememberMe.value,
                          onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                      const Text(SafeSafaiTexts.rememberMe),
                    ],
                  ),

                  /// Forgot Password
                  Spacer(),
                  TextButton(
                      onPressed: () => Get.to(() => const ForgetPassword()),
                      child: Text(SafeSafaiTexts.forgetPassword)),
                ],
              ),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwInputFields,
              ),

              /// sign in button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(()=> NavigationMenu()),
                      child: const Text(SafeSafaiTexts.signIn,))),

              const SizedBox(
                height: SafeSafaiSizes.spaceBtwInputFields / 2,
              ),

              /// Creat Account Button
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () => Get.to(()=>const SignupScreen()),
                    child: const Text(SafeSafaiTexts.createAccount),
                  )),
            ],
          ),
        ));
  }
}