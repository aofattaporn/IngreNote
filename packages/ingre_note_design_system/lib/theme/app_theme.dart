import 'package:flutter/material.dart';
import '../tokens/colors.dart';
import '../tokens/spacing.dart';
import '../tokens/typography.dart';

class BWTheme {
  static ThemeData light() {
    final base = ThemeData.light(useMaterial3: true);
    return base.copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: BWColors.primary,
        primary: BWColors.primary,
        secondary: BWColors.secondary,
        error: BWColors.error,
        background: BWColors.neutral10,
      ),
      scaffoldBackgroundColor: BWColors.neutral10,
      textTheme: base.textTheme.copyWith(
        titleLarge: BWTypos.title,
        titleMedium: BWTypos.subtitle,
        bodyMedium: BWTypos.body,
        labelLarge: BWTypos.label,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: BWSpace.lg,
            vertical: BWSpace.sm,
          ),
        ),
      ),
    );
  }
}
