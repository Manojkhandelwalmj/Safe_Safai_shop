import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:safe_safai_shop/features/authentication/screens/login/login.dart';
import 'package:safe_safai_shop/features/authentication/screens/onboarding/onboarding.dart';
import 'package:safe_safai_shop/features/authentication/screens/signup/verify_email.dart';
import 'package:safe_safai_shop/navigation_menu.dart';
import 'package:safe_safai_shop/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:safe_safai_shop/utils/exceptions/firebase_exceptions.dart';
import 'package:safe_safai_shop/utils/exceptions/format_exceptions.dart';
import 'package:safe_safai_shop/utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// Called from main.dart on app Launch
  @override
  void onReady() {
    // Remove the native splash
    FlutterNativeSplash.remove();
    // Redirect to the appropriate screen
    screenRedirect();
  }

  /// Function to show Relavent Screen
  void screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => VerifyEmailScreen(
              email: _auth.currentUser?.email,
            ));
      }
    } else {
      // Local Storage
      if (kDebugMode) {
        print('========Get Storage Auth Repository ========');
        print(deviceStorage.read('isFirstTime'));
      }
      deviceStorage.writeIfNull('isFirstTime', true);
      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const LoginScreen()) // Redirect to Login Screen if not the First time
          : Get.offAll(() => const OnBoardingScreen()); // Redirect to OnBoarding Screen if it's First time
    }
  }

/* --------------------------- Email & Password sign-in -----------------------------*/

  /// [Email Authentication] - SignIN
  Future<UserCredential> loginWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword (email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw SafeSafaiFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SafeSafaiFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const SafeSafaiFormatException();
    } on PlatformException catch (e) {
      throw SafeSafaiPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// [Email Authentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw SafeSafaiFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SafeSafaiFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw SafeSafaiFormatException;
    } on PlatformException catch (e) {
      throw SafeSafaiPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// [ReAuthenticate] - ReAuthenticate user

  /// [Email Verificatio] - Mail Verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw SafeSafaiFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SafeSafaiFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const SafeSafaiFormatException();
    } on PlatformException catch (e) {
      throw SafeSafaiPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// [Email Authentication] - Forget Password

/* --------------------------- Federated idedntity & social sign-in -----------------------*/

  /// [Google Authentication] - Google

  /// [Facebook Authentication] - Facebook

/* --------------------------- ./end Federated identity & social sign-in ---------------------*/

  /// [Logout User] - Valid for any authentication
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw SafeSafaiFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SafeSafaiFirebaseException (e.code).message;
    } on FormatException catch (_) {
      throw const SafeSafaiFormatException();
    } on PlatformException catch (e) {
      throw SafeSafaiPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// Delete user - Remove user Auth and Firebase Account.
}
