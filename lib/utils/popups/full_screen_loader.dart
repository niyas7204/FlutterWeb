import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';
import 'package:myapp/utils/device/device_utility.dart';

class FullScreenLoaders {
  static void loadingDialoge(String text, String? animation) {
    showDialog(
      context: Get.overlayContext!,
      builder: (context) => PopScope(
        canPop: false,
        child: Container(
          color: DeviceUtility.isDark(Get.context!)
              ? Colors.black
              : Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(text), CircularProgressIndicator()],
          ),
        ),
      ),
    );
  }

  static void stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
