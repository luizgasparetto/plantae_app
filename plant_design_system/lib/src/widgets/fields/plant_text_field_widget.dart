import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';

import '../../../plant_design_system.dart';

class PlantTextFieldWidget extends StatelessWidget {
  final String hintText;

  const PlantTextFieldWidget({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: PlantCustomColor.buttonColor,
      style: GoogleFonts.jost(color: PlantCustomColor.buttonColor, fontSize: 19),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.jost(color: PlantCustomColor.dialogColor, fontSize: 19, height: 1.5),
        contentPadding: const EdgeInsets.only(left: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: PlantCustomColor.lightBorderColor, width: 3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: PlantCustomColor.lightBorderColor, width: 3),
        ),
      ),
    );
  }
}
