import 'package:core_module/core.dart';

import '../../domain/params/login_with_email_params.dart';
import '../../domain/repositories/i_login_repository.dart';
import '../datasources/i_login_datasource.dart';

class LoginRepositoryImpl implements ILoginRepository {
  final ILoginDatasource _loginDatasource;

  const LoginRepositoryImpl(this._loginDatasource);

  @override
  Future<Either<IError, Unit>> loginWithEmail(LoginWithEmailParams params) async {
    try {
      await _loginDatasource.loginWithEmail(params);

      return right(unit);
    } on IError catch (error) {
      return left(error);
    }
  }
}
