import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';

import '../../../plant_design_system.dart';

class PlantTextFieldWidget extends StatelessWidget {
  final String hintText;

  const PlantTextFieldWidget({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: PlantCustomColor.buttonColor,
      style: theme.textTheme.headline2!.copyWith(color: PlantCustomColor.darkColor, fontSize: 17),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: GoogleFonts.jost(color: PlantCustomColor.dialogColor, fontSize: 17, height: 1.5),
        contentPadding: const EdgeInsets.only(left: 20, bottom: 30),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: PlantCustomColor.lightBorderColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: PlantCustomColor.lightBorderColor, width: 2),
        ),
      ),
    );
  }
}
