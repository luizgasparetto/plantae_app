import 'package:core_module/core.dart';
import 'package:dependency_module/dependency_module.dart';

class SplashController {
  final IAuthService _authService;

  const SplashController(this._authService);

  void initApp() {
    final isUserAuthenticated = _authService.isUserAuthenticated;

    isUserAuthenticated ? Modular.to.navigate(AppRoutes.dashboard) : Modular.to.navigate(AppRoutes.loginPage);
  }
}
