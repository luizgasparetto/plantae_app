import 'package:plantae/app/modules/user/domain/entities/user_entity.dart';

abstract class IUserDatasource {
  Future<UserEntity> getCurrentUser();
}
