import 'package:core_module/core.dart';
import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

import 'flavors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Flavors.flavorType = FlavorTypeEnum.prod;

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
