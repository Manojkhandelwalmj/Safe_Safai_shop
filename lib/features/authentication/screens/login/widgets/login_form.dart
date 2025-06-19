import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:safe_safai_shop/features/authentication/screens/signup/signup.dart';
import 'package:safe_safai_shop/navigation_menu.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/constants/text_strings.dart';

class SafeSafaiLoginForm extends StatelessWidget {
  const SafeSafaiLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: SafeSafaiSizes.spaceBtwSections),
          child: Column(
            children: [
              /// Email
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: SafeSafaiTexts.email,
                ),
              ),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwInputFields,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  labelText: SafeSafaiTexts.password,
                  suffixIcon: Icon(CupertinoIcons.eye),
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
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
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