import '../../domain/entities/user_entity.dart';

abstract class IUserDatasource {
  Future<UserEntity> getCurrentUser();
}
