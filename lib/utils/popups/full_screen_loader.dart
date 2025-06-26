import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';
import 'package:myapp/utils/constants/white_spaces.dart';
import 'package:myapp/utils/device/device_utility.dart';

class FullScreenLoaders {
  static void loadingDialoge(String text, String? animation) {
    showDialog(
      context: Get.overlayContext!,
      builder: (context) => PopScope(
        canPop: true,
        child: Align(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,

            child: Material(
              color: Colors.black.withValues(alpha: .5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  WhiteSpaces.height10,
                  Text(text),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static void stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
