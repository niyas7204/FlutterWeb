import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
                                                                                                                                                                                                                                                import 'package:myapp/common/controllers/network_manager.dart';
import 'package:myapp/features/authentication/models/user_model.dart';
import 'package:myapp/features/authentication/services/auth_services.dart';
import 'package:myapp/features/authentication/view/pages/verify_email.dart';
import 'package:myapp/utils/popups/full_screen_loader.dart';
import 'package:myapp/utils/popups/snackbar.dart';

class SignupController extends GetxController {
  static SignupController get instanse => Get.find();
  final RxBool hidePassword = true.obs;
  final RxBool acceptPrivacyPolicy = false.obs;
  final emailController = TextEditingController();
  final firstController = TextEditingController();
  final userNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  //signup
  void signUp() async {
    try {
      final authServices = AuthServices();
      FullScreenLoaders.loadingDialoge("Loading .....", null);
      final isConnected = NetworkManager.instance.isConnected();

      if (!isConnected) {
        FullScreenLoaders.stopLoading();
        AppAlerts.errorSnakbar(
          title: "Network Not Found",
          message: "Please connect to any network",
        );
        return;
      }
      // if (!signupFormKey.currentState!.validate()) {
      //   FullScreenLoaders.stopLoading();
      //   return;
      // }
      if (!acceptPrivacyPolicy.value) {
        FullScreenLoaders.stopLoading();
        AppAlerts.warningSnakbar(
          title: "Accept Privacy Policy",
          message:
              "You must have to read and accept Privacy Policay & Terms of Use",
        );
        return;
      }
      final userCredential = await authServices.registerUserWithCredentials(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      final user = UserModel(
        id: userCredential.user!.uid,
        firstName: firstController.text.trim(),
        lastName: lastNameController.text.trim(),
        userName: userNameController.text.trim(),
        email: emailController.text.trim(),
        mobile: phoneController.text.trim(),
        profile: null,
      );
      await authServices.saveUserCredentials(user: user);

      AppAlerts.successSnakbar(
        title: "Congratulations",
        message: "You account has been created",
      );
      Get.to(() => VerifyEmailScreen());
    } catch (e) {
      log("faled to signup $e");
      FullScreenLoaders.stopLoading();
      AppAlerts.warningSnakbar(title: "Ooops !", message: e.toString());
    }
  }
}
