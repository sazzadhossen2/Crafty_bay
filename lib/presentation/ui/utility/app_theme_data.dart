import 'package:flutter/material.dart';

import 'app_colors.dart';

class Appthemedata {
  final ThemeData lightTheme = ThemeData(
      primarySwatch:
          MaterialColor(AppColors.primaryColor.value, AppColors.colorSwatch),
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor)),
      ),
      textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          bodySmall: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 12, color: Colors.grey)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 14),
        textStyle: const TextStyle(fontSize: 15, letterSpacing: 0.5),
      )),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
      )),
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
          elevation: 5,
          backgroundColor: Colors.white));
}
