import 'package:flutter/material.dart';
import 'package:ingre_note_design_system/components/buttons/in_button.dart';
import 'package:ingre_note_design_system/mocks/in_card_menu_mock.dart';
import 'package:ingre_note_design_system/tokens/colors.dart';
import 'package:ingre_note_design_system/tokens/radius.dart';
import 'package:ingre_note_design_system/tokens/spacing.dart';

class INCardMenu extends StatelessWidget {
  final double width;
  final Menu menu;
  final bool isGenerated;
  final bool isSelected;

  const INCardMenu({
    super.key,
    required this.width,
    required this.menu,
    this.isGenerated = true,
    this.isSelected = true,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(INRadius.lg);

    return ClipRRect(
      borderRadius: BorderRadius.circular(INRadius.lg),

      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          /// Main card
          Container(
            width: width,
            padding: const EdgeInsets.all(INSpace.md),
            decoration: BoxDecoration(
              color: INColors.white,
              borderRadius: borderRadius,
              boxShadow: [
                BoxShadow(
                  color: INColors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 15,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title + Checkmark
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        menu.title,
                        style: Theme.of(context).textTheme.headlineSmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (isSelected)
                      const Icon(Icons.check_circle, color: INColors.success),
                  ],
                ),
                const SizedBox(height: INSpace.xs),

                _InfoRow(
                  icon: Icons.calendar_today,
                  text: "${menu.date.day}/${menu.date.month}/${menu.date.year}",
                ),
                const SizedBox(height: INSpace.xs),

                _InfoRow(
                  icon: Icons.people_alt_sharp,
                  text: "${menu.servings} servings",
                ),
              ],
            ),
          ),

          /// Ingredient panel
          Positioned(
            left: width * 0.7,
            child: _IngredientPanel(
              width: width * 0.3,
              isGenerated: isGenerated,
            ),
          ),
        ],
      ),
    );
  }
}

/// Row widget for icon + text
class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _InfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: INColors.grey),
        const SizedBox(width: INSpace.xs),
        Text(
          text,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: INColors.grey),
        ),
      ],
    );
  }
}

/// Ingredient panel on the right side
class _IngredientPanel extends StatelessWidget {
  final double width;
  final bool isGenerated;

  const _IngredientPanel({required this.width, required this.isGenerated});

  @override
  Widget build(BuildContext context) {
    final bgColor = isGenerated ? INColors.primary : INColors.lightGrey;
    final iconColor =
        isGenerated ? INColors.white.withOpacity(0.7) : INColors.grey.shade400;

    return Container(
      width: width,
      height: 122,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(INRadius.lg),
          bottomRight: Radius.circular(INRadius.lg),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.receipt_long_outlined, size: 36, color: iconColor),
          const SizedBox(height: INSpace.xs),
          isGenerated
              ? Text(
                "Ingredient",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: iconColor,
                ),
              )
              : INButton(label: "Add", onPressed: () {}),
        ],
      ),
    );
  }
}
