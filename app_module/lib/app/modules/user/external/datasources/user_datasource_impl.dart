import 'package:core_module/core.dart';

import '../../domain/entities/user_entity.dart';
import '../../infra/datasources/i_user_datasource.dart';

class UserDatasourceImpl implements IUserDatasource {
  final IAuthService _authService;
  final IRemoteDatabaseService _remoteDatabaseService;

  const UserDatasourceImpl(this._authService, this._remoteDatabaseService);

  @override
  Future<UserEntity> getCurrentUser() async {
    final userData = await _remoteDatabaseService.getDocument('users', _authService.currentUserId);

    return const UserEntity(id: 1, name: 'name', email: 'email', phone: 'phone', imageUrl: ' imageUrl', plants: []);
  }
}
