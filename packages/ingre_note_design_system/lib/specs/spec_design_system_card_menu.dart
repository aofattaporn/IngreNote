import 'package:flutter/material.dart';
import 'package:ingre_note_design_system/components/cards/in_card_menu.dart';
import 'package:ingre_note_design_system/exporter.dart';
import 'package:ingre_note_design_system/mocks/in_card_menu_mock.dart';

/// Card Menu Spec Widget
class SpecDesignSystemCardMenu extends StatelessWidget {
  const SpecDesignSystemCardMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final menu = sampleMenu();
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: INSpace.sm,
      children: [
        SizedBox(height: INSpace.lg),
        Text("Card Spec", style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: INSpace.md),
        INCardMenu(
          width: screenWidth * 0.8,
          menu: menu,
          isGenerated: false,
          isSelected: true,
        ),

        INCardMenu(
          width: screenWidth * 0.8,
          menu: menu,
          isGenerated: true,
          isSelected: false,
        ),
      ],
    );
  }
}
