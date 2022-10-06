import 'package:dependency_module/dependency_module.dart';

import 'presenter/ui/register_page.dart';

class RegisterModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const RegisterPage()),
      ];
}
