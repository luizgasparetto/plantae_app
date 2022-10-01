import 'package:core_module/core.dart';

import '../entities/user_entity.dart';
import '../repositories/i_user_repository.dart';

abstract class IGetCurrentUserUsecase {
  Future<Either<IError, UserEntity>> getCurrentUser();
}

class GetCurrentUserUsecaseImpl implements IGetCurrentUserUsecase {
  final IUserRepository _userRepository;

  const GetCurrentUserUsecaseImpl(this._userRepository);

  @override
  Future<Either<IError, UserEntity>> getCurrentUser() async {
    return await _userRepository.getCurrentUser();
  }
}
