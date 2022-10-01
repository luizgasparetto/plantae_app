import 'package:app_module/app/modules/dashboard/presenter/ui/dashboard_page.dart';
import 'package:dependency_module/dependency_module.dart';

class DashboardModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const DashboardPage()),
      ];
}
