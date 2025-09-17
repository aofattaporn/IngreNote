import 'package:flutter/material.dart';
import 'package:ingre_note_design_system/components/buttons/in_elevate_button.dart';
import 'package:ingre_note_design_system/components/buttons/in_outline_button.dart';
import 'package:ingre_note_design_system/components/buttons/in_text_button.dart';
import 'package:ingre_note_design_system/exporter.dart';

class SpecDesignSystemButton extends StatelessWidget {
  const SpecDesignSystemButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: INSpace.sm,
      children: [
        SizedBox(height: INSpace.lg),
        Text("Button Spec", style: Theme.of(context).textTheme.titleLarge),

        Row(
          spacing: INSpace.lg,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            INElevatedButton(
              onPressed: () {},
              label: "Elevated Button",
              isEnabled: true,
            ),
            INElevatedButton(
              onPressed: () {},
              label: "Elevated Button",
              isEnabled: false,
            ),
          ],
        ),

        Row(
          spacing: INSpace.lg,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            INOutlinedButton(
              onPressed: () {},
              label: "Outlined Button",
              isEnabled: true,
            ),
            INOutlinedButton(
              onPressed: () {},
              label: "Outlined Button",
              isEnabled: false,
            ),
          ],
        ),

        Row(
          spacing: INSpace.lg,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            INTextButton(
              onPressed: () {},
              label: "Text Button",
              isEnabled: true,
            ),
            INTextButton(
              onPressed: () {},
              label: "Text Button",
              isEnabled: false,
            ),
          ],
        ),
      ],
    );
  }
}
