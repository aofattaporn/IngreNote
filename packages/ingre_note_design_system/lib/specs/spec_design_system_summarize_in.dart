import 'package:flutter/material.dart';
import 'package:ingre_note_design_system/components/cards/in_card_summarized.dart';
import 'package:ingre_note_design_system/tokens/colors.dart';
import 'package:ingre_note_design_system/tokens/radius.dart';
import 'package:ingre_note_design_system/tokens/spacing.dart';

class SpecDesignSystemSummarizeIn extends StatelessWidget {
  const SpecDesignSystemSummarizeIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: INSpace.sm,
      children: [
        SizedBox(height: INSpace.lg),
        Text(
          "Summarizw Card Spec",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(height: INSpace.md),
        SummarizwCard(),
      ],
    );
  }
}
