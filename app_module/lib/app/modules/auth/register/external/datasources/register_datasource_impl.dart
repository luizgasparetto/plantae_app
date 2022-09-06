import 'package:plantae/app/core/services/auth/i_auth_service.dart';
import 'package:plantae/app/modules/auth/register/domain/params/register_with_email_params.dart';
import 'package:plantae/app/modules/auth/register/infra/datasources/i_register_datasource.dart';

class RegisterDatasourceImpl implements IRegisterDatasource {
  final IAuthService _authService;

  const RegisterDatasourceImpl(this._authService);

  @override
  Future<void> registerWithEmail(RegisterWithEmailParams params) async {
    return await _authService.registerWithEmail(params);
  }
}
