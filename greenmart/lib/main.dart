import 'dart:io';

import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_fonts.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_styles.dart';
import 'package:greenmart/features/intro/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppFonts.poppins,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            minimumSize: const Size(double.infinity, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            foregroundColor: AppColors.backgroundColor,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size(60, 30),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyles.caption2,
          fillColor: AppColors.accentColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          //   borderSide: BorderSide(color: AppColors.primaryColor),
          // ),
          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          //   borderSide: BorderSide.none,
          // ),
          // errorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          //   borderSide: BorderSide.none,
          // ),
          // focusedErrorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          //   borderSide: BorderSide.none,
          // ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
          // text color
          onSurface: AppColors.blackColor,
        ),
      ),
      builder: (context, child) {
        return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? Scaffold(),
        );
      },
      home: SplashScreen(),
    );
  }
}
