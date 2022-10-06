import 'package:core_module/core.dart';
import 'package:dependency_module/dependency_module.dart';

import 'modules/auth/auth_module.dart';
import 'modules/dashboard/dashboard_module.dart';
import 'modules/plant/plant_module.dart';
import 'modules/search/search_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: AuthModule()),
        ModuleRoute('/dashboard', module: DashboardModule()),
        ModuleRoute('/plant', module: PlantModule()),
        ModuleRoute('/search', module: SearchModule()),
      ];
}
