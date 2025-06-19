import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/features/authentication/screens/login/login.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/constants/text_strings.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: Get.back, icon: Icon(Icons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SafeSafaiSizes.defaultSpace),
          child: Column(
            children: [
              /// Image with 60% of Screen Width
              Image(
                image: AssetImage(SafeSafaiImages.confirmAnimation),
                alignment: Alignment.center,
                width: SafeSafaiHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwSections,
              ),

              /// Title & Subtitle
              Text(
                SafeSafaiTexts.changeYourPasswordTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwItems,
              ),

              Text(
                SafeSafaiTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SafeSafaiSizes.spaceBtwSections,
              ),

              /// Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => LoginScreen()),
                      child: Text(SafeSafaiTexts.done))),
              SizedBox(height: SafeSafaiSizes.spaceBtwItems,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: Text(SafeSafaiTexts.resendEmail),)),
            ],
          ),
        ),
      ),
    );
  }
}
