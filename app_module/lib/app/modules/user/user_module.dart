import 'package:dependency_module/dependency_module.dart';

import 'presenter/ui/profile_page.dart';

class UserModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const ProfilePage()),
      ];
}
