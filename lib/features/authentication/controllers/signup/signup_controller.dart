import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/data/repositories/authentication/authentication_repository.dart';
import 'package:safe_safai_shop/data/repositories/services/netwrok_managers.dart';
import 'package:safe_safai_shop/data/repositories/user/user_repository.dart';
import 'package:safe_safai_shop/features/authentication/screens/signup/verify_email.dart';
import 'package:safe_safai_shop/features/personalization/models/user_model.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/popups/full_screen_loader.dart';
import 'package:safe_safai_shop/utils/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs; // Observable for hiding/showing password
  final privacyPolicy = true.obs; // Observable for hiding/showing password
  final email = TextEditingController(); // Controller for email input
  final lastName = TextEditingController(); // Controller for last name input
  final username = TextEditingController(); // Controller for username input
  final password = TextEditingController(); // Controller for password input
  final firstName = TextEditingController(); // Controller for first Name input
  final phoneNumber =
  TextEditingController(); // Controller for phoneNumber input
  GlobalKey<FormState> signupFormKey =
  GlobalKey<FormState>(); // Form key for Form Validation

  /// -- SignUP
  void signup() async {
    try {
      // Start Loading
      SafeSafaiFullScreenLoader.openLoadingDialog(
          'We are processing your information...',
          SafeSafaiImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove Loader
        SafeSafaiFullScreenLoader.stopLoading();
        return;
      }
      // Form Validation
      if (!signupFormKey.currentState!.validate()) {
        // Remove Loader
        SafeSafaiFullScreenLoader.stopLoading();
        return;
      }
      // Privacy Policy Check
      if (!privacyPolicy.value) {
        SafeSafaiLoaders.warningSnackBar(title: 'Accept Privacy Policy',
            message: 'In Order to Create Account, you must have to read and accept the Privacy Policy & Terms of Use.');
        return;
      }

      // Register user in the Firebase Authentication & Save user Data in the Firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
          email.text.trim(), password.text.trim());

      // Save Authenticated user data in the Firebase FireStore
      final newUser = UserModel(id: userCredential.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          username: username.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: '');

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);
      // Show Success Message
      SafeSafaiLoaders.successSnackBar(title: 'Congratulations', message: 'Your account has been created Successfully! Verify email to continue');

      // Move to Verify Email Screen
      Get.to(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      // Remove Loader
      SafeSafaiFullScreenLoader.stopLoading();

      // show some Generic Error to the user
      SafeSafaiLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
    // finally {
    //   // Remove Loader
    //   SafeSafaiFullScreenLoader.stopLoading();
    // }
  }
}
