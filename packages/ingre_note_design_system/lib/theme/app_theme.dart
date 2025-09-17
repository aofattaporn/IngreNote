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
        error: INColors.error,
        secondary: INColors.dark,
        tertiary: INColors.black,

        background: INColors.lightGrey,
      ),
      scaffoldBackgroundColor: INColors.white,
      textTheme: ingreNoteTyposTheme.textTheme,
    );
  }
}
