import 'package:flutter/material.dart';

abstract class AppPalette {
  static const primary = Color(0xFF087EAF);
  static const primaryDark = Color(0xFF00628E);
  static const primaryLight = Color(0xFF0D8BC0);
  static const screenBackground = Color(0xFFF8FAFB);
  static const surface = Colors.white;
  static const textPrimary = Color(0xFF111827);
  static const textSecondary = Color(0xFF4D5560);
  static const textMuted = Color(0xFF9BA1A5);
  static const border = Color(0xFFE1E1E1);
  static const softBlue = Color(0xFFF0F7FE);
  static const topBarGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryLight, primaryDark],
  );
}

abstract class AppDimensions {
  static const double iconSmall = 16;
  static const double iconMedium = 24;
  static const double iconLarge = 30;
  static const double radiusSmall = 14;
  static const double radiusMedium = 20;
  static const double radiusLarge = 24;
  static const double pageHorizontalPadding = 22;
}

abstract class AppTextStyles {
  static const appBarTitle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
  static const sectionTitle = TextStyle(
    color: Color(0xFF39424E),
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );
  static const cardTitle = TextStyle(
    color: AppPalette.textPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w800,
  );
  static const cardBody = TextStyle(
    color: AppPalette.textSecondary,
    fontSize: 13,
    height: 1.35,
  );
}

abstract class AppTheme {
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: AppPalette.screenBackground,
    colorScheme: const ColorScheme.light(
      primary: AppPalette.primary,
      onPrimary: Colors.white,
      surface: AppPalette.surface,
      onSurface: AppPalette.textPrimary,
    ),
    textTheme: const TextTheme(
      titleLarge: AppTextStyles.cardTitle,
      bodyMedium: AppTextStyles.cardBody,
    ),
  );
}
