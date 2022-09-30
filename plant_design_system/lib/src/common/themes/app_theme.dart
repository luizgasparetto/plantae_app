import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';
import 'package:plant_design_system/src/common/themes/text_theme.dart';

class AppTheme {
  static ThemeData get = ThemeData(
    backgroundColor: PlantCustomColor.backgroundColor,
    scaffoldBackgroundColor: PlantCustomColor.backgroundColor,
    primaryColor: const Color.fromRGBO(0, 123, 33, 1),
    textTheme: PlantTextThemes.getTheme,
  );
}
