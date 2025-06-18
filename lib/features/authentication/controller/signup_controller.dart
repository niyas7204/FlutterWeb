import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:myapp/utils/network_manager.dart';
import 'package:myapp/utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instanse => Get.find();
  final emailController = TextEditingController();
  final firstController = TextEditingController();
  final userNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  //signup
  Future<void> signUp() async {
    try {
      log("sign up");
      FullScreenLoaders.loadingDialoge("Loading .....", null);
      final isConnected = NetworkManager.instance.isConnected();

      if (!isConnected) {
        log("not connected");
        FullScreenLoaders.stopLoading();
        return;
      }
      if (!signupFormKey.currentState!.validate()) {
        log("validation false");
        FullScreenLoaders.stopLoading();
        return;
      }
    } catch (e) {
      log("faled to signup $e");
      FullScreenLoaders.stopLoading();
    }
  }
}
