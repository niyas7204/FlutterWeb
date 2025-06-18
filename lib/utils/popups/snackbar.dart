import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/utils/constants/colors.dart';

class AppAlerts {
  static void warningSnakbar({required String title, String message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      colorText: Colors.white,
      backgroundColor: Color(0xFFBE3144),
    );
  }

  static void successSnakbar({required String title, String message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      colorText: Colors.white,
      backgroundColor: Appcolors.primeryColor,
    );
  }

  static void erroSnakbar({required String title, String message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      colorText: Colors.red,
      backgroundColor: Appcolors.primeryColor,
    );
  }
}
