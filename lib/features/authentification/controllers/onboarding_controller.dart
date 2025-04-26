import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopper/features/authentification/screens/login/login.dart';

class OnboardingController  extends GetxController{
  static OnboardingController get instance => Get.find();

  // - - - Var
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // - - - Update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // - - - Jump to specific dot
  void dotNavigationClick(index)  {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // - - - Update index and Jump to next page
  void nextPage() {
    if(currentPageIndex.value == 2){
      Get.offAll(const LoginScreen());
    }else {
      int page = currentPageIndex.value + 1;
      currentPageIndex.value = page;
      pageController.jumpToPage(page);
    }
  }

  // - - - Update index and Jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

}