// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'app_color.dart';

class AppStyles {
  static BoxShadow buttonShadow = BoxShadow(
    color: Colors.black.withOpacity(0.05),
    blurRadius: 2,
    offset: const Offset(0, 1),
  );

  static ButtonStyle get saleDashboardElevatedButtonStyle =>
      ElevatedButton.styleFrom(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.primary,
        shadowColor: Colors.black.withOpacity(0.05),
        elevation: 8,
        surfaceTintColor: AppColors.background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      );

  static TextTheme textTheme = const TextTheme(
    headlineLarge: TextStyle(fontWeight: FontWeight.w700),
    headlineMedium: TextStyle(),
    headlineSmall: TextStyle(fontWeight: FontWeight.w200),
    displayLarge: TextStyle(fontWeight: FontWeight.w700),
    displayMedium: TextStyle(),
    displaySmall: TextStyle(fontWeight: FontWeight.w200),
    titleLarge: TextStyle(fontWeight: FontWeight.w700),
    titleMedium: TextStyle(),
    titleSmall: TextStyle(fontWeight: FontWeight.w200),
    bodyLarge: TextStyle(fontWeight: FontWeight.w700),
    bodyMedium: TextStyle(),
    bodySmall: TextStyle(fontWeight: FontWeight.w200),
    labelLarge: TextStyle(fontWeight: FontWeight.w700),
    labelMedium: TextStyle(),
    labelSmall: TextStyle(fontWeight: FontWeight.w200),
  );
}
