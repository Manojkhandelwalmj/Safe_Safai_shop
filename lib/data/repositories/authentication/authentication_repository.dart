import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:safe_safai_shop/features/authentication/screens/login/login.dart';
import 'package:safe_safai_shop/features/authentication/screens/onboarding/onboarding.dart';
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
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Function to show Relavent Screen
  void screenRedirect() async {
    // Local Storage
    if(kDebugMode){
      print('========Get Storage Auth Repository ========');
      print(deviceStorage.read('isFirstTime'));
    }
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true ? Get.offAll(() => const LoginScreen()) : Get.offAll(() => const OnBoardingScreen());
  }
/* --------------------------- Email & Password sign-in -----------------------------*/

  /// [Email Authentication] - SignIN

  /// [Email Authentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(String email,String password) async{
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      throw SafeSafaiFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e){
      throw SafeSafaiFirebaseException(e.code).message;
    } on FormatException catch(e){
      throw SafeSafaiFormatException;
    }on PlatformException catch(e){
      throw SafeSafaiPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong. Please try again';
    }
  }

  /// [ReAuthenticate] - ReAuthenticate user

  /// [Email Verificatio] - Mail Verification

  /// [Email Authentication] - Forget Password

/* --------------------------- Federated idedntity & social sign-in -----------------------*/

  /// [Google Authentication] - Google

  /// [Facebook Authentication] - Facebook

/* --------------------------- ./end Federated identity & social sign-in ---------------------*/

  /// [Logout User] - Valid for any authentication

  /// Delete user - Remove user Auth and Firebase Account.
}
