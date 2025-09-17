import 'package:flutter/material.dart';
import 'package:ingre_note_design_system/tokens/colors.dart';
import 'package:ingre_note_design_system/tokens/radius.dart';
import 'package:ingre_note_design_system/tokens/typography.dart';

class INTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final String? label;
  final String? errorText;
  final bool isPassword;
  final bool enabled;
  final TextInputType keyboardType;
  final int? maxLines;

  const INTextField({
    super.key,
    required this.controller,
    this.hint,
    this.label,
    this.errorText,
    this.isPassword = false,
    this.enabled = true,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      enabled: enabled,
      keyboardType: keyboardType,
      maxLines: maxLines,
      style: INTypos.bodyMedium.copyWith(
        color: enabled ? INColors.dark : INColors.lightGrey,
      ),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        errorText: errorText,
        filled: true,
        fillColor: enabled ? INColors.white : INColors.lightGrey,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(INRadius.md),
          borderSide: BorderSide(color: INColors.lightGrey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(INRadius.md),
          borderSide: BorderSide(color: INColors.lightGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(INRadius.md),
          borderSide: BorderSide(color: INColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(INRadius.md),
          borderSide: BorderSide(color: INColors.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(INRadius.md),
          borderSide: BorderSide(color: INColors.error, width: 2),
        ),
      ),
    );
  }
}
