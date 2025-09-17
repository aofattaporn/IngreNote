import 'package:flutter/material.dart';
import 'package:ingre_note_design_system/exporter.dart';
import 'package:ingre_note_design_system/tokens/radius.dart';

class _ColorSpec {
  final String name;
  final Color color;

  _ColorSpec(this.name, this.color);
}

class SpecDesignSystemColor extends StatelessWidget {
  const SpecDesignSystemColor({super.key});

  // ignore: library_private_types_in_public_api
  List<_ColorSpec> get colorSpecs => [
    _ColorSpec("Primary", INColors.primary),
    _ColorSpec("Dark", INColors.dark),
    _ColorSpec("Black", INColors.black),
    _ColorSpec("White", INColors.white),
    _ColorSpec("Grey", INColors.grey),
    _ColorSpec("Light Grey", INColors.lightGrey),
    _ColorSpec("Error", INColors.error),
  ];

  List<Widget> buildColorBox(BuildContext context, String label, Color color) {
    return [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(INRadius.md),
        ),
      ),
      Text(label, style: Theme.of(context).textTheme.bodyMedium),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: INSpace.sm,
      children: [
        SizedBox(height: INSpace.lg),
        Text("collor Spec", style: Theme.of(context).textTheme.titleLarge),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: INSpace.md,
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  colorSpecs
                      .map(
                        (spec) => Column(
                          spacing: INSpace.sm,
                          children: buildColorBox(
                            context,
                            spec.name,
                            spec.color,
                          ),
                        ),
                      )
                      .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
