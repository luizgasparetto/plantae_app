import '../../../../../core/services/auth/i_auth_service.dart';
import '../../domain/params/login_with_email_params.dart';
import '../../infra/datasources/i_login_datasource.dart';

class LoginDatasourceImpl implements ILoginDatasource {
  final IAuthService _authService;

  const LoginDatasourceImpl(this._authService);

  @override
  Future<void> loginWithEmail(LoginWithEmailParams params) async {
    return await _authService.loginWithEmail(params);
  }
}
