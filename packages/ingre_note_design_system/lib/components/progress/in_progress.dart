import 'package:flutter/material.dart';
import 'package:ingre_note_design_system/tokens/colors.dart';

class INProgressBar extends StatelessWidget {
  const INProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: 2.0,
      valueColor: AlwaysStoppedAnimation<Color>(INColors.primary),
    );
  }
}
