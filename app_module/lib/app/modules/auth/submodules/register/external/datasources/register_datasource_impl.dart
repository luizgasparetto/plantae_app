import 'package:core_module/core.dart';

import '../../domain/params/register_with_email_params.dart';
import '../../infra/datasources/i_register_datasource.dart';

class RegisterDatasourceImpl implements IRegisterDatasource {
  final IAuthService _authService;

  const RegisterDatasourceImpl(this._authService);

  @override
  Future<void> registerWithEmail(RegisterWithEmailParams params) async {
    return await _authService.registerWithEmail(params);
  }
}
