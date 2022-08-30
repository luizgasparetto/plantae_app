import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plantae/app/app_module.dart';
import 'package:plantae/app/app_widget.dart';
import 'package:plantae/app/core/enums/flavor_type_enum.dart';
import 'package:plantae/flavors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Flavors.flavorType = FlavorTypeEnum.dev;

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
