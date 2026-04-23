import 'package:flutter/material.dart';

class QRSTheme {
  static String fontFamily = 'Nunito';
  static double titleLargeSize = 16;
  static double titleSmallSize = 13.5;

  // Brand Colors - Premium
  static const Color _accentAmber = Color(0xFFFBBF24);
  static const Color _surfaceDark = Color(0xFF1E293B);
  static const Color _surfaceContainerDark = Color(0xFF334155);
  static const Color _backgroundLight = Color(0xFFF8FAFC);
  static const Color _surfaceLight = Color(0xFFFFFFFF);

  static ThemeData light(ThemeData template) {
    var themeData = template;

    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF2563EB),
      brightness: Brightness.light,
    );

    var newThemeData = themeData.copyWith(
      canvasColor: _backgroundLight,
      colorScheme: colorScheme.copyWith(
        surface: _surfaceLight,
        surfaceContainerLowest: _surfaceLight,
        surfaceContainerLow: _backgroundLight,
        secondaryContainer: _accentAmber.withValues(alpha: 0.15),
        tertiary: _accentAmber,
      ),
      primaryColor: colorScheme.primary,
      splashColor: const Color(0xFF2563EB).withValues(alpha: 0.2),
      dialogTheme: DialogThemeData(
        backgroundColor: _surfaceLight,
        surfaceTintColor: Colors.transparent,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      cardTheme: CardThemeData(
        color: _surfaceLight,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: colorScheme.outlineVariant.withValues(alpha: 0.5),
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: _backgroundLight,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: colorScheme.onSurface,
          fontFamily: fontFamily,
          fontSize: titleLargeSize,
          fontWeight: FontWeight.w700,
        ),
        iconTheme: IconThemeData(
          color: colorScheme.onSurface,
        ),
      ),
      iconTheme: IconThemeData(
        color: colorScheme.onSurface,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: colorScheme.onSurface,
          fontFamily: fontFamily,
          fontSize: titleLargeSize,
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onSurface,
          fontFamily: fontFamily,
          fontSize: titleSmallSize,
          fontWeight: FontWeight.w500,
        ),
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: colorScheme.inverseSurface,
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: TextStyle(
          color: colorScheme.onInverseSurface,
          fontFamily: fontFamily,
          fontSize: 12,
        ),
      ),
      tabBarTheme: TabBarThemeData(
        indicatorColor: colorScheme.primary,
        dividerColor: Colors.transparent,
      ),
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: colorScheme.primary.withValues(alpha: 0.3),
        selectionHandleColor: colorScheme.primary,
        cursorColor: colorScheme.primary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primaryContainer,
        foregroundColor: colorScheme.onPrimaryContainer,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colorScheme.inverseSurface,
        contentTextStyle: TextStyle(
          color: colorScheme.onInverseSurface,
          fontFamily: fontFamily,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
    return newThemeData;
  }

  static ThemeData dark(ThemeData template) {
    var themeData = template;

    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF0F172A),
      brightness: Brightness.dark,
    );

    var newThemeData = themeData.copyWith(
      canvasColor: const Color(0xFF0F172A),
      colorScheme: colorScheme.copyWith(
        surface: _surfaceDark,
        surfaceContainerLowest: _surfaceDark,
        surfaceContainerLow: _surfaceContainerDark,
        secondaryContainer: _accentAmber.withValues(alpha: 0.2),
        tertiary: _accentAmber,
      ),
      primaryColor: colorScheme.onSurface,
      splashColor: _accentAmber.withValues(alpha: 0.2),
      dialogTheme: DialogThemeData(
        backgroundColor: _surfaceDark,
        surfaceTintColor: Colors.transparent,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      cardTheme: CardThemeData(
        color: _surfaceContainerDark,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: colorScheme.outlineVariant.withValues(alpha: 0.3),
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF0F172A),
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: colorScheme.onSurface,
          fontFamily: fontFamily,
          fontSize: titleLargeSize,
          fontWeight: FontWeight.w700,
        ),
        iconTheme: IconThemeData(
          color: colorScheme.onSurface,
        ),
      ),
      iconTheme: IconThemeData(
        color: colorScheme.onSurface,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: colorScheme.onSurface,
          fontFamily: fontFamily,
          fontSize: titleLargeSize,
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onSurface,
          fontFamily: fontFamily,
          fontSize: titleSmallSize,
          fontWeight: FontWeight.w500,
        ),
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: colorScheme.inverseSurface,
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: TextStyle(
          color: colorScheme.onInverseSurface,
          fontFamily: fontFamily,
          fontSize: 12,
        ),
      ),
      tabBarTheme: TabBarThemeData(
        indicatorColor: _accentAmber,
        dividerColor: Colors.transparent,
      ),
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: colorScheme.primary.withValues(alpha: 0.4),
        selectionHandleColor: colorScheme.primary,
        cursorColor: colorScheme.primary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.tertiaryContainer,
        foregroundColor: colorScheme.onTertiaryContainer,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colorScheme.inverseSurface,
        contentTextStyle: TextStyle(
          color: colorScheme.onInverseSurface,
          fontFamily: fontFamily,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
    return newThemeData;
  }
}