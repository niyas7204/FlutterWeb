import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils/constants/colors.dart';
import 'package:myapp/utils/theme/text_them.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: Appcolors.seconderyLightColor,
    textTheme: AppTextTheme.lightTextTheme,
    primaryColor: Colors.blue,
  );
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: Appcolors.seconderyDarkColor,
    textTheme: AppTextTheme.darkTextTheme,
    primaryColor: Colors.blue,
  );
}
