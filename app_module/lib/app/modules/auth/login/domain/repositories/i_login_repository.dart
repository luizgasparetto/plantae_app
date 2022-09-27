import '../../../../../core/contracts/i_error.dart';
import '../../../../../core/helpers/either.dart';
import '../params/login_with_email_params.dart';

abstract class ILoginRepository {
  Future<Either<IError, Unit>> loginWithEmail(LoginWithEmailParams params);
}
