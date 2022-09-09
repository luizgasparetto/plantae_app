import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';
import 'app/core/enums/flavor_type_enum.dart';
import 'flavors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Flavors.flavorType = FlavorTypeEnum.dev;

  await Firebase.initializeApp();

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
