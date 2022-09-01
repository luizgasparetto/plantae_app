import 'package:plantae/app/core/services/auth/i_auth_service.dart';
import 'package:plantae/app/modules/auth/login/domain/params/login_with_email_params.dart';
import 'package:plantae/app/modules/auth/login/infra/datasources/i_login_datasource.dart';

class LoginDatasourceImpl implements ILoginDatasource {
  final IAuthService _authService;

  const LoginDatasourceImpl(this._authService);

  @override
  Future<void> loginWithEmail(LoginWithEmailParams params) async {
    return await _authService.loginWithEmail(params);
  }
}
