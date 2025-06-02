import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:myapp/features/authentication/view/pages/login_screen.dart';
import 'package:myapp/features/authentication/view/pages/onboading_screen.dart';
import 'package:myapp/features/authentication/view/pages/signup_screen.dart';
import 'package:myapp/features/authentication/view/pages/verify_email.dart';
import 'package:myapp/firebase_options.dart';
import 'package:myapp/utils/theme/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
      darkTheme: AppTheme.darkTheme,

      home: VerifyEmailScreen(),
    );
  }
}
