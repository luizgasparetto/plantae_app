import 'package:dependency_module/dependency_module.dart';

import 'presenter/controllers/splash_controller.dart';
import 'presenter/ui/splash_page.dart';

class SplashModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => SplashController(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (context, __) => const SplashPage()),
      ];
}
