import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/common/widgets/sucess_screen/sucess_screen.dart';
import 'package:safe_safai_shop/features/authentication/screens/login/login.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';
import 'package:safe_safai_shop/utils/constants/text_strings.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SafeSafaiSizes.defaultSpace),
          child: Column(
            children: [
              /// Images
              Image(
                image: AssetImage(SafeSafaiImages.sendEmailAnimation),
                width: SafeSafaiHelperFunctions.screenWidth() * 0.6,
                alignment: Alignment.center,
              ),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwSections,
              ),

              /// Title & Subtitle
              Text(
                SafeSafaiTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwItems,
              ),
              Text(
                'support@SafeSafai.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwItems,
              ),
              Text(
                SafeSafaiTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwSections,
              ),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() =>  SucessScreen(
                        image: SafeSafaiImages.confirmAnimation,
                        title: SafeSafaiTexts.yourAccountCreatedTitle,
                        subtitle: SafeSafaiTexts.yourAccountCreatedSubTitle, onPressed: () {} ,
                        )),
                    child: Text(SafeSafaiTexts.safeSafaiContinue)),
              ),
              const SizedBox(
                height: SafeSafaiSizes.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: (){},
                    child: Text(SafeSafaiTexts.resendEmail),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
