import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myapp/features/authentication/view/pages/login_screen.dart';
import 'package:myapp/features/authentication/view/pages/onboading_screen.dart';
import 'package:myapp/features/authentication/view/pages/signup_screen.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();
  final deviceStorage = GetStorage();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
    super.onReady();
  }

  void screenRedirect() async {
    !deviceStorage.read("isFirstTime")
        ? Get.offAll(() => SignupScreen())
        : Get.offAll(() => OnboadingScreen());
  }
}
