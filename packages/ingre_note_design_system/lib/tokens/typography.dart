import 'package:flutter/material.dart';
import 'package:ingre_note_design_system/tokens/colors.dart';

class INTypos {
  // -------------------------
  // Headline / Titles
  // -------------------------
  static const headline1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    height: 1.3,
    color: INColors.dark,
  );

  static const headline2 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    height: 1.3,
    color: INColors.dark,
  );

  static const headline3 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.3,
    color: INColors.dark,
  );

  static const title = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    height: 1.3,
    color: INColors.dark,
  );

  static const subtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: INColors.dark,
  );

  // -------------------------
  // Body / Paragraph
  // -------------------------
  static const bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    height: 1.5,
    color: INColors.dark,
  );

  static const bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    height: 1.5,
    color: INColors.dark,
  );

  static const bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    height: 1.5,
    color: INColors.dark,
  );

  // -------------------------
  // Labels / Button text
  // -------------------------
  static const labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: INColors.dark,
  );

  static const labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: INColors.dark,
  );

  static const labelSmall = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: INColors.dark,
  );

  // -------------------------
  // Caption / Helper text
  // -------------------------
  static const caption = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    height: 1.2,
    color: Colors.grey,
  );

  // -------------------------
  // Overline / Extra small
  // -------------------------
  static const overline = TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.normal,
    height: 1.2,
  );
}

final base = ThemeData.light(useMaterial3: true);

ThemeData ingreNoteTyposTheme = base.copyWith(
  textTheme: base.textTheme.copyWith(
    headlineLarge: INTypos.headline1,
    headlineMedium: INTypos.headline2,
    headlineSmall: INTypos.headline3,
    titleLarge: INTypos.title,
    titleMedium: INTypos.subtitle,
    bodyLarge: INTypos.bodyLarge,
    bodyMedium: INTypos.bodyMedium,
    bodySmall: INTypos.bodySmall,
    labelLarge: INTypos.labelLarge,
    labelMedium: INTypos.labelMedium,
    labelSmall: INTypos.labelSmall,
  ),
);
