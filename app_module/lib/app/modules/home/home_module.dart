import 'package:dependency_module/dependency_module.dart';

import 'presenter/ui/home_page.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const HomePage()),
      ];
}
