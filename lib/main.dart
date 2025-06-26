import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myapp/bindings/General_bindings.dart';
import 'package:myapp/data/repositories/auth_repository.dart';
import 'package:myapp/features/authentication/view/pages/onboading_screen.dart';
import 'package:myapp/features/authentication/view/pages/verify_email.dart';
import 'package:myapp/firebase_options.dart';
import 'package:myapp/common/controllers/network_manager.dart';
import 'package:myapp/utils/theme/themes.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    Get.put(AuthRepository());
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      initialBinding: GeneralBindings(),
      darkTheme: AppTheme.darkTheme,

      home: OnboadingScreen(),
    );
  }
}
