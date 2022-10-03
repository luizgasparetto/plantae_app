import 'package:app_module/app/modules/auth/submodules/login/presenter/ui/login_page.dart';
import 'package:dependency_module/dependency_module.dart';

class LoginModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const LoginPage()),
      ];
}
