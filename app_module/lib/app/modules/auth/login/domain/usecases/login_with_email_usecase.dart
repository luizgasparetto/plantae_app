import '../../../../../core/contracts/i_error.dart';
import '../../../../../core/helpers/either.dart';
import '../../../register/domain/errors/domain_errors.dart';
import '../params/login_with_email_params.dart';
import '../repositories/i_login_repository.dart';

abstract class ILoginWithEmailUsecase {
  Future<Either<IError, Unit>> execute(LoginWithEmailParams params);
}

class LoginWithEmailUsecaseImpl implements ILoginWithEmailUsecase {
  final ILoginRepository _loginRepository;

  const LoginWithEmailUsecaseImpl(this._loginRepository);

  @override
  Future<Either<IError, Unit>> execute(LoginWithEmailParams params) async {
    // TODO - Change to ValueObject
    if (params.email.isEmpty || params.password.isEmpty) {
      return left(EmptyParamsDomainError(message: 'Login Empty Params', stackTrace: StackTrace.current));
    }

    return await _loginRepository.loginWithEmail(params);
  }
}
