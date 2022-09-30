import 'package:core_module/core.dart';

import '../../domain/params/register_with_email_params.dart';
import '../../domain/repositories/i_register_repository.dart';
import '../datasources/i_register_datasource.dart';

class RegisterRepositoryImpl implements IRegisterRepository {
  final IRegisterDatasource _registerDatasource;

  const RegisterRepositoryImpl(this._registerDatasource);

  @override
  Future<Either<IError, Unit>> registerWithEmail(RegisterWithEmailParams params) async {
    try {
      await _registerDatasource.registerWithEmail(params);

      return right(unit);
    } on IError catch (error) {
      return left(error);
    }
  }
}
