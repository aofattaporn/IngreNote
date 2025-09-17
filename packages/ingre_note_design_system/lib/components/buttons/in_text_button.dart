import 'package:flutter/material.dart';
import 'package:ingre_note_design_system/components/progress/in_progress.dart';
import 'package:ingre_note_design_system/tokens/colors.dart';

class INTextButton extends StatelessWidget {
  const INTextButton({
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
    return TextButton(
      onPressed: isEnabled && !isLoading ? onPressed : null,
      child:
          isLoading
              ? INProgressBar()
              : Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: isEnabled ? INColors.dark : INColors.grey,
                ),
              ),
    );
  }
}
