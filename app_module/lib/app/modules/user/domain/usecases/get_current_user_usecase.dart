import 'package:plantae/app/core/contracts/i_error.dart';
import 'package:plantae/app/core/helpers/either.dart';
import 'package:plantae/app/modules/user/domain/entities/user_entity.dart';
import 'package:plantae/app/modules/user/domain/repositories/i_user_repository.dart';

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
