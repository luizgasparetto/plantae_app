import 'package:plantae/app/core/contracts/i_error.dart';
import 'package:plantae/app/core/helpers/either.dart';
import 'package:plantae/app/modules/auth/login/domain/params/login_with_email_params.dart';

abstract class ILoginRepository {
  Future<Either<IError, Unit>> loginWithEmail(LoginWithEmailParams params);
}
