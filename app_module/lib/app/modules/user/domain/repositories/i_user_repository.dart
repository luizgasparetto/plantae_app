import 'package:plantae/app/core/contracts/i_error.dart';
import 'package:plantae/app/core/helpers/either.dart';
import 'package:plantae/app/modules/user/domain/entities/user_entity.dart';

abstract class IUserRepository {
  Future<Either<IError, UserEntity>> getCurrentUser();
}
