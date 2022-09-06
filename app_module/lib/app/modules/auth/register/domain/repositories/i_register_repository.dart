import 'package:plantae/app/core/contracts/i_error.dart';
import 'package:plantae/app/core/helpers/either.dart';
import 'package:plantae/app/modules/auth/register/domain/params/register_with_email_params.dart';

abstract class IRegisterRepository {
  Future<Either<IError, Unit>> registerWithEmail(RegisterWithEmailParams params);
}
