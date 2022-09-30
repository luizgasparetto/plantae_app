import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';

import 'custom_colors.dart';

class PlantTextThemes {
  static TextTheme get getTheme {
    return TextTheme(
      headline1: GoogleFonts.playfairDisplay(
        color: PlantCustomColor.textColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headline2: GoogleFonts.playfairDisplay(
        color: PlantCustomColor.textColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
