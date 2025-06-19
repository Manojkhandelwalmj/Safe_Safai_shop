import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as deviceStorage;
import 'package:safe_safai_shop/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  /// variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs; // we can also use final instead of Rx<int>
  /// Update Current Index when page scrolled
  void updatePageIndicator(index){
    currentPageIndex.value = index;
  }

  /// jump to the specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update current index & jump to the next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      final storage = GetStorage();
      if(kDebugMode){
        print('========Get Storage Next Button========');
        print(storage.read('isFirstTime'));
      }
      storage.write('isFirstTime', false);

      if(kDebugMode){
        print('========Get Storage Next Button========');
        print(storage.read('isFirstTime'));
      }
      Get.offAll(const LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update current index & jump to the last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}