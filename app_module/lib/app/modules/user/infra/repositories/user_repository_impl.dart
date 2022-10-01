import 'package:core_module/core.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/i_user_repository.dart';
import '../datasources/i_user_datasource.dart';

class UserRepositoryImpl implements IUserRepository {
  final IUserDatasource _userDatasource;

  const UserRepositoryImpl(this._userDatasource);

  @override
  Future<Either<IError, UserEntity>> getCurrentUser() async {
    try {
      final response = await _userDatasource.getCurrentUser();

      return right(response);
    } on IError catch (error) {
      return left(error);
    }
  }
}
