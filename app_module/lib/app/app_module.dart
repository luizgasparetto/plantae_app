import 'package:app_module/app/modules/auth/auth_module.dart';
import 'package:app_module/app/modules/dashboard/dashboard_module.dart';
import 'package:app_module/app/modules/plant/plant_module.dart';
import 'package:core_module/core.dart';
import 'package:dependency_module/dependency_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: AuthModule()),
        ModuleRoute('/dashboard', module: DashboardModule()),
        ModuleRoute('/plant', module: PlantModule()),
      ];
}
