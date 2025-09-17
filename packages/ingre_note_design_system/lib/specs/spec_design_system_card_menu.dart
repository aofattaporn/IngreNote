import 'package:flutter/material.dart';
import 'package:ingre_note_design_system/components/cards/in_card_menu.dart';
import 'package:ingre_note_design_system/exporter.dart';

/// ข้อมูลเมนู
class Menu {
  final String id;
  final String title;
  final DateTime date;
  final int servings;
  final DateTime? createDatetime;

  Menu({
    required this.id,
    required this.title,
    required this.date,
    required this.servings,
    this.createDatetime,
  });

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      id: json['id'] as String,
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      servings: json['servings'] as int,
      createDatetime:
          json['createDatetime'] != null
              ? DateTime.parse(json['createDatetime'] as String)
              : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'date': date.toIso8601String(),
      'servings': servings,
      'createDatetime': createDatetime?.toIso8601String(),
    };
  }
}

/// Card Menu Spec Widget
class SpecDesignSystemCardMenu extends StatelessWidget {
  const SpecDesignSystemCardMenu({super.key});

  Menu sampleMenu() {
    return Menu(
      id: "1",
      title: "กะเพราไก่",
      date: DateTime.now(),
      servings: 4,
      createDatetime: DateTime.now(),
    );
  }

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
          isGenerated: false,
          isSelected: false,
        ),

        INCardMenu(
          width: screenWidth * 0.8,
          menu: menu,
          isGenerated: true,
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
