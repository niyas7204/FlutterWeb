import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myapp/features/authentication/view/pages/login_screen.dart';

class OnboardController extends GetxController {
  static OnboardController get instance => Get.find();
  final PageController onBoardPageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  void updatePageIndicater(int index) {
    log("update page");
    currentPageIndex.value = index;
    log("update page ${currentPageIndex.value}");
  }

  void dotNavigation(int index) {
    onBoardPageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      storage.write("isFirstTime", false);
      //login page
      Get.offAll(LoginScreen());
    } else {
      // updatePageIndicater(currentPageIndex.value + 1);
      onBoardPageController.jumpToPage(currentPageIndex.value + 1);
    }
  }

  void skipPage() {
    log("skip page");
    onBoardPageController.jumpToPage(2);
    // Or navigate ot login page
  }
}
