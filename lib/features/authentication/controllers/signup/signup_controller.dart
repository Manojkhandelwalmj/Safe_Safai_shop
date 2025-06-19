import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_safai_shop/data/repositories/services/netwrok_managers.dart';
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
  Future<void> signup() async {
    try {
      // Start Loading
      SafeSafaiFullScreenLoader.openLoadingDialog(
          'We are processing your information...',
          SafeSafaiImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;
      // Form Validation
      if (!signupFormKey.currentState!.validate()) return;
      // Privacy Policy Check
      if(!privacyPolicy.value){
        SafeSafaiLoaders.warningSnackBar(title: 'Accept Privacy Policy',
        message: 'In Order to Create Account, you must have to read and accept the Privacy Policy & Terms of Use.');
        return;
      }

      // Register user in the Firebase Authentication & Save user Data in the Firebase


      // Save Authenticated user data in the Firebase FireStore

      // Show Success Message

      // Move to Verify Email Screen
    } catch (e) {
      // show some Generic Error to the user
      SafeSafaiLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      // Remove Loader
      SafeSafaiFullScreenLoader.stopLoading();
    }
  }
}
