import 'package:flutter/material.dart';
import 'package:ingre_note_design_system/components/progress/in_progress.dart';
import 'package:ingre_note_design_system/tokens/colors.dart';

class INButton extends StatelessWidget {
  const INButton({
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
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      child:
          isLoading
              ? const SizedBox(
                width: 16.0,
                height: 16.0,
                child: INProgressBar(),
              )
              : Text(
                label,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: INColors.white),
              ),
    );
  }
}
