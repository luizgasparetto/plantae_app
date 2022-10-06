import 'package:dependency_module/dependency_module.dart';

import 'presenter/ui/login_page.dart';

class LoginModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const LoginPage()),
      ];
}
