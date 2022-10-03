import 'package:app_module/app/modules/auth/submodules/login/login_module.dart';
import 'package:app_module/app/modules/auth/submodules/register/register_module.dart';
import 'package:dependency_module/dependency_module.dart';

class AuthModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: LoginModule()),
        ModuleRoute('/register', module: RegisterModule()),
      ];
}
