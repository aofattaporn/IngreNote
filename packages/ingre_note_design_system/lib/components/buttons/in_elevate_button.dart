import 'package:flutter/material.dart';
import 'package:ingre_note_design_system/components/progress/in_progress.dart';
import 'package:ingre_note_design_system/tokens/colors.dart';

class INElevatedButton extends StatelessWidget {
  const INElevatedButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isEnabled = true,
    this.isLoading = false,
  });

  final String label;
  final VoidCallback onPressed;
  final bool isEnabled;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isEnabled && !isLoading ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: isEnabled ? INColors.primary : INColors.lightGrey,
        foregroundColor: INColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0),
        ),
      ),
      child:
          isLoading
              ? INProgressBar()
              : Text(
                label,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: INColors.white),
              ),
    );
  }
}
