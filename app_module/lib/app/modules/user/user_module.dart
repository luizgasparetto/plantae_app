import 'package:app_module/app/modules/user/presenter/ui/profile_page.dart';
import 'package:dependency_module/dependency_module.dart';

class UserModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const ProfilePage()),
      ];
}
