import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_design_system/plant_design_system.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp.router(
      title: 'Plantae',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.get,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      builder: Asuka.builder,
    );
  }
}
