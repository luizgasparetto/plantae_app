import 'package:plantae/app/modules/user/domain/entities/user_entity.dart';
import 'package:plantae/app/core/helpers/either.dart';
import 'package:plantae/app/core/contracts/i_error.dart';
import 'package:plantae/app/modules/user/domain/repositories/i_user_repository.dart';
import 'package:plantae/app/modules/user/infra/datasources/i_user_datasource.dart';

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
