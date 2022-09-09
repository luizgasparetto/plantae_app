import '../../../../../core/contracts/i_error.dart';
import '../../../../../core/helpers/either.dart';
import '../params/register_with_email_params.dart';

abstract class IRegisterRepository {
  Future<Either<IError, Unit>> registerWithEmail(RegisterWithEmailParams params);
}
