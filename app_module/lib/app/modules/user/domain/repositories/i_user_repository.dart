import 'package:core_module/core.dart';

import '../entities/user_entity.dart';

abstract class IUserRepository {
  Future<Either<IError, UserEntity>> getCurrentUser();
}
