import 'package:app_module/app/modules/auth/login/domain/params/login_with_email_params.dart';
import 'package:app_module/app/modules/auth/login/domain/repositories/i_login_repository.dart';
import 'package:app_module/app/modules/auth/login/domain/usecases/login_with_email_usecase.dart';
import 'package:core_module/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class LoginRepositoryMock extends Mock implements ILoginRepository {}

void main() {
  late final ILoginRepository loginRepository;
  late final ILoginWithEmailUsecase sut;

  const kLoginParams = LoginWithEmailParams(email: 'email', password: 'password');

  setUpAll(() {
    loginRepository = LoginRepositoryMock();
    sut = LoginWithEmailUsecaseImpl(loginRepository);
  });

  setUp(() {
    registerFallbackValue(kLoginParams);
  });

  group('LoginWithEmail Usecase | ', () {
    test('should be able to call LoginRepository and return a Unit', () async {
      when(() => loginRepository.loginWithEmail(any())).thenAnswer((_) async => right(unit));

      final response = await sut.execute(kLoginParams);

      verify(() => loginRepository.loginWithEmail(any())).called(1);
      expect(response.fold((l) => l, (r) => r), isA<Unit>());
    });

    test('should return an EmptyParamsDomainError when Email or Password is invalid', () async {
      when(() => loginRepository.loginWithEmail(any())).thenAnswer((_) async => right(unit));

      final response = await sut.execute(const LoginWithEmailParams(email: '', password: ''));

      verifyNever(() => loginRepository.loginWithEmail(any()));
      expect(response.fold((l) => l, (r) => r), isA<DomainError>());
    });

    test('should return a DatasourceError when repository fails', () async {
      when(() => loginRepository.loginWithEmail(any())).thenAnswer(
        (_) async => left(DatasourceError(message: '', stackTrace: StackTrace.empty)),
      );

      final response = await sut.execute(kLoginParams);

      verify(() => loginRepository.loginWithEmail(any())).called(1);
      expect(response.fold((l) => l, (r) => r), isA<DatasourceError>());
    });
  });
}
