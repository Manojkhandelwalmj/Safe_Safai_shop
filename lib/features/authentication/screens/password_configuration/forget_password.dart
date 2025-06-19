import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(SafeSafaiSizes.defaultSpace),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Headings
            Text(
              SafeSafaiTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: SafeSafaiSizes.spaceBtwItems,
            ),
            Text(
              SafeSafaiTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: SafeSafaiSizes.spaceBtwSections*2,),


            /// Text Field
            TextFormField(
              decoration: const InputDecoration(
                labelText: SafeSafaiTexts.email, prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: SafeSafaiSizes.spaceBtwSections,),
            /// Submit Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (() => Get.off(()=> ResetPassword())), child: Text(SafeSafaiTexts.submit)))
          ],
        ),
      ),
    );
  }
}
