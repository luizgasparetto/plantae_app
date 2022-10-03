import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';

import 'custom_colors.dart';

class PlantTextThemes {
  static TextTheme get getTheme {
    return TextTheme(
      headline1: GoogleFonts.jost(
        color: PlantCustomColor.darkColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      headline2: GoogleFonts.jost(
        color: PlantCustomColor.dialogColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      headline3: GoogleFonts.jost(
        color: PlantCustomColor.darkColor,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      headline4: GoogleFonts.jost(
        color: PlantCustomColor.dialogColor,
        fontSize: 16,
      ),
      headline5: GoogleFonts.jost(
        color: PlantCustomColor.darkColor,
        fontSize: 14,
      ),
    );
  }
}
