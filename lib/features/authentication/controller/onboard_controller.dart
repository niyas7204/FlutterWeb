import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardController extends GetxController {
  static OnboardController get instance => Get.find();
  final PageController onBoardPageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  updatePageIndicater(index) => currentPageIndex.value = index;

  void dotNavigation(index) {
    onBoardPageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      //login page
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
