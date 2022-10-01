import 'package:app_module/app/modules/user/domain/entities/user_entity.dart';
import 'package:app_module/app/modules/user/domain/repositories/i_user_repository.dart';
import 'package:app_module/app/modules/user/domain/usecases/get_current_user_usecase.dart';
import 'package:core_module/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class UserRepositoryMock extends Mock implements IUserRepository {}

void main() {
  late final IUserRepository userRepository;
  late final IGetCurrentUserUsecase sut;

  const userEntityStub = UserEntity(id: 1, name: 'test', email: 'email', phone: 'phone', imageUrl: 'img', plants: []);

  setUpAll(() {
    userRepository = UserRepositoryMock();
    sut = GetCurrentUserUsecaseImpl(userRepository);
  });

  group('Get Current User Usecase | ', () {
    test('should be able to call repository and return a UserEntity', () async {
      when(() => userRepository.getCurrentUser()).thenAnswer((_) async => right(userEntityStub));

      final response = await sut.getCurrentUser();

      verify(() => userRepository.getCurrentUser()).called(1);
      expect(response.fold((l) => l, (r) => r), isA<UserEntity>());
    });

    test('should be able to call repository and return a DatasourceError if repository fails', () async {
      when(() => userRepository.getCurrentUser()).thenAnswer(
        (_) async => left(DatasourceError(message: 'Error', stackTrace: StackTrace.empty)),
      );

      final response = await sut.getCurrentUser();

      verify(() => userRepository.getCurrentUser()).called(1);
      expect(response.fold((l) => l, (r) => r), isA<DatasourceError>());
    });
  });
}
