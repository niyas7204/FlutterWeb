import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/utils/constants/colors.dart';

class AppAlerts {
  static void errorSnakbar({required String title, String message = ''}) {
    Get.snackbar(
      title,
      message,
      titleText: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      messageText: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 14, color: Colors.white),
      ),
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

  static void warningSnakbar({required String title, String message = ''}) {
    Get.snackbar(
      title,
      message,
      titleText: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      messageText: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 14, color: Colors.white),
      ),
      isDismissible: true,
      colorText: Colors.white,
      backgroundColor: Appcolors.primeryColor,
    );
  }
}
