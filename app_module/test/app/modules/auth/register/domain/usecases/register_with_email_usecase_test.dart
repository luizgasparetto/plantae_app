import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:plantae/app/core/errors/datasource_error.dart';
import 'package:plantae/app/core/errors/domain_error.dart';
import 'package:plantae/app/core/helpers/either.dart';
import 'package:plantae/app/modules/auth/register/domain/params/register_with_email_params.dart';
import 'package:plantae/app/modules/auth/register/domain/repositories/i_register_repository.dart';
import 'package:plantae/app/modules/auth/register/domain/usecases/register_with_email_usecase.dart';

class RegisterRepositoryMock extends Mock implements IRegisterRepository {}

void main() {
  late final IRegisterRepository registerRepository;
  late final IRegisterWithEmailUsecase sut;

  const kRegisterParams = RegisterWithEmailParams(email: 'email', password: 'password');

  setUpAll(() {
    registerRepository = RegisterRepositoryMock();
    sut = RegisterWithEmailUsecaseImpl(registerRepository);
  });

  setUp(() {
    registerFallbackValue(kRegisterParams);
  });

  group('RegisterWithEmail Usecase | ', () {
    test('should be able to call RegisterRepository and return a Unit', () async {
      when(() => registerRepository.registerWithEmail(any())).thenAnswer((_) async => right(unit));

      final response = await sut.execute(kRegisterParams);

      verify(() => registerRepository.registerWithEmail(any())).called(1);
      expect(response.fold((l) => l, (r) => r), isA<Unit>());
    });

    test('should return an EmptyParamsDomainError when Email or Password is invalid', () async {
      when(() => registerRepository.registerWithEmail(any())).thenAnswer((_) async => right(unit));

      final response = await sut.execute(const RegisterWithEmailParams(email: '', password: ''));

      verifyNever(() => registerRepository.registerWithEmail(any()));
      expect(response.fold((l) => l, (r) => r), isA<DomainError>());
    });

    test('should return a DatasourceError when repository fails', () async {
      when(() => registerRepository.registerWithEmail(any())).thenAnswer(
        (_) async => left(DatasourceError(message: '', stackTrace: StackTrace.empty)),
      );

      final response = await sut.execute(kRegisterParams);

      verify(() => registerRepository.registerWithEmail(any())).called(1);
      expect(response.fold((l) => l, (r) => r), isA<DatasourceError>());
    });
  });
}
