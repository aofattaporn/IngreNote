import 'package:flutter/material.dart';
import 'package:ingre_note_design_system/specs/spec_design_system_button.dart';
import 'package:ingre_note_design_system/specs/spec_design_system_card_menu.dart';
import 'package:ingre_note_design_system/specs/spec_design_system_color.dart';
import 'package:ingre_note_design_system/specs/spec_design_system_summarize_in.dart';
import 'package:ingre_note_design_system/specs/spec_dsign_system_textfield.dart';

class INSpecDesignSystem extends StatelessWidget {
  const INSpecDesignSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 244, 244),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpecDesignSystemColor(),
            SpecDesignSystemButton(),
            SpecDsignSystemTextfield(),
            SpecDesignSystemCardMenu(),
            SpecDesignSystemSummarizeIn(),
          ],
        ),
      ),
    );
  }
}
