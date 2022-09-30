import 'package:dependency_module/dependency_module.dart';
import 'package:plantae/app/core/core_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: HomeModule()),
      ];
}
