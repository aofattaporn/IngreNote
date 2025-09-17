import 'package:flutter/material.dart';
import 'package:ingre_note_design_system/exporter.dart';

class SpecDsignSystemTextfield extends StatefulWidget {
  const SpecDsignSystemTextfield({super.key});

  @override
  State<SpecDsignSystemTextfield> createState() =>
      _SpecDsignSystemTextfieldState();
}

class _SpecDsignSystemTextfieldState extends State<SpecDsignSystemTextfield> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: INSpace.sm,
      children: [
        SizedBox(height: INSpace.lg),
        Text("Typos Spec", style: Theme.of(context).textTheme.titleLarge),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Wrap(
            spacing: INSpace.lg,
            runSpacing: INSpace.sm,
            alignment: WrapAlignment.center,
            children: [
              INTextField(
                controller: controller,
                label: "Label Text",
                enabled: true,
              ),
              INTextField(
                controller: controller,
                label: "Label Text",
                enabled: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
