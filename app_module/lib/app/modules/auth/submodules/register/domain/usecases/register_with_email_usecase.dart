import 'package:core_module/core.dart';

import '../errors/domain_errors.dart';
import '../params/register_with_email_params.dart';
import '../repositories/i_register_repository.dart';

abstract class IRegisterWithEmailUsecase {
  Future<Either<IError, Unit>> execute(RegisterWithEmailParams params);
}

class RegisterWithEmailUsecaseImpl implements IRegisterWithEmailUsecase {
  final IRegisterRepository _registerRepository;

  const RegisterWithEmailUsecaseImpl(this._registerRepository);

  @override
  Future<Either<IError, Unit>> execute(RegisterWithEmailParams params) async {
    if (params.email.isEmpty || params.password.isEmpty) {
      return left(EmptyParamsDomainError(message: 'Empty Params Error', stackTrace: StackTrace.current));
    }

    return await _registerRepository.registerWithEmail(params);
  }
}
