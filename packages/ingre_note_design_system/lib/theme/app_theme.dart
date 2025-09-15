import 'package:flutter/material.dart';
import '../tokens/colors.dart';
import '../tokens/typography.dart';

class INTheme {
  static ThemeData light() {
    final base = ThemeData.light(useMaterial3: true);
    return base.copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: INColors.primary,
        primary: INColors.primary,
        error: INColors.red,
        background: INColors.lightGrey,
      ),
      scaffoldBackgroundColor: INColors.white,
      textTheme: base.textTheme.copyWith(
        titleLarge: BWTypos.title,
        titleMedium: BWTypos.subtitle,
        bodyMedium: BWTypos.body,
        labelLarge: BWTypos.label,
      ),
    );
  }
}
