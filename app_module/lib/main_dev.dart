import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plantae/app/app_module.dart';
import 'package:plantae/app/app_widget.dart';
import 'package:plantae/app/core/enums/flavor_type_enum.dart';
import 'package:plantae/flavors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Flavors.flavorType = FlavorTypeEnum.dev;

  await Firebase.initializeApp();

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
