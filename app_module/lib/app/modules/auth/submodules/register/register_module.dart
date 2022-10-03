import 'package:app_module/app/modules/auth/submodules/register/presenter/ui/register_page.dart';
import 'package:dependency_module/dependency_module.dart';

class RegisterModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const RegisterPage()),
      ];
}
