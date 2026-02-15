import 'package:flutter/material.dart';
import 'package:state_provider/home.dart';
import 'core/constants/app_color.dart';
import 'core/constants/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'grandview',
        fontFamilyFallback: const ['hanuman'],
        primarySwatch: MaterialColor(AppColors.primary.value, {
          50: AppColors.primary.withOpacity(0.1),
          100: AppColors.primary.withOpacity(0.2),
          200: AppColors.primary.withOpacity(0.3),
          300: AppColors.primary.withOpacity(0.4),
          400: AppColors.primary.withOpacity(0.5),
          500: AppColors.primary.withOpacity(0.6),
          600: AppColors.primary.withOpacity(0.7),
          700: AppColors.primary.withOpacity(0.8),
          800: AppColors.primary.withOpacity(0.9),
          900: AppColors.primary.withOpacity(1.0),
        }),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.primary,
          onPrimary: AppColors.onPrimary,
          secondary: AppColors.secondary,
          onSecondary: AppColors.onSecondary,
          error: AppColors.error,
          onError: AppColors.onError,
          surface: AppColors.surface,
          onSurface: AppColors.onSurface,
        ),
        textTheme: AppStyles.textTheme,
        appBarTheme: const AppBarTheme(
          elevation: 10,
          centerTitle: false,
          color: Colors.yellow,
          scrolledUnderElevation: 1,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.normal,
            color: AppColors.onBackground,
            fontSize: 18,
            fontFamily: 'grandview',
            fontFamilyFallback: ['hanuman'],
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColors.onPrimary,
            backgroundColor: AppColors.primary,
            disabledBackgroundColor: const Color(0xFFFAFAF9),
            disabledForegroundColor: const Color(0xFFD6D3D1),
            textStyle: AppStyles.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: 'grandview',
              fontFamilyFallback: ['hanuman'],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(99),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primary,
            textStyle: AppStyles.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: 'grandview',
              fontFamilyFallback: ['hanuman'],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.primary,
            textStyle: AppStyles.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: 'grandview',
              fontFamilyFallback: ['hanuman'],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(99),
            ),
            side: const BorderSide(color: AppColors.primary, width: 1),
          ),
        ),
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: AppColors.primary.withOpacity(0.16),
          selectionHandleColor: AppColors.primary.withOpacity(0.75),
        ),
        inputDecorationTheme: InputDecorationTheme(
          errorMaxLines: 10,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: AppColors.error),
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
          fillColor: AppColors.inputBackground,
          isDense: true,
          suffixIconColor: AppColors.primary,
          prefixIconColor: const Color(0xFFD6D3D1),
          labelStyle: const TextStyle(
            fontWeight: FontWeight.w200,
            fontFamily: 'grandview',
            fontFamilyFallback: ['hanuman'],
          ),
          hintStyle: const TextStyle(
            color: Color(0xFFD6D3D1),
            fontFamily: 'grandview',
            fontFamilyFallback: ['hanuman'],
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
        ),
        switchTheme: const SwitchThemeData(),
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: Home(),
    );
  }
}

