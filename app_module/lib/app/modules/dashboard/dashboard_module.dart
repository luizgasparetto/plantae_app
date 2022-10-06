import 'package:dependency_module/dependency_module.dart';

import 'presenter/ui/dashboard_page.dart';

class DashboardModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const DashboardPage()),
      ];
}
