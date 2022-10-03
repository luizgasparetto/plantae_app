import 'package:app_module/app/modules/auth/submodules/register/domain/params/register_with_email_params.dart';
import 'package:app_module/app/modules/auth/submodules/register/domain/repositories/i_register_repository.dart';
import 'package:app_module/app/modules/auth/submodules/register/infra/datasources/i_register_datasource.dart';
import 'package:app_module/app/modules/auth/submodules/register/infra/repositories/register_repository_impl.dart';
import 'package:core_module/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class RegisterDatasourceMock extends Mock implements IRegisterDatasource {}

void main() {
  late final IRegisterDatasource registerDatasource;
  late final IRegisterRepository sut;

  const kRegisterWithEmailParams = RegisterWithEmailParams(email: '', password: '');

  setUpAll(() {
    registerDatasource = RegisterDatasourceMock();
    sut = RegisterRepositoryImpl(registerDatasource);
  });

  setUp(() {
    registerFallbackValue(kRegisterWithEmailParams);
  });

  group('Register Repository | ', () {
    group('With Email | ', () {
      test('should be able to call Datasource successfully and return an Unit', () async {
        when(() => registerDatasource.registerWithEmail(any())).thenAnswer((_) async {});

        final response = await sut.registerWithEmail(kRegisterWithEmailParams);

        verify(() => registerDatasource.registerWithEmail(any())).called(1);
        expect(response.fold((l) => l, (r) => r), isA<Unit>());
      });

      test('should be able to return a DatasourceError if Datasource fails', () async {
        when(() => registerDatasource.registerWithEmail(any())).thenThrow(
          DatasourceError(message: '', stackTrace: StackTrace.empty),
        );

        final response = await sut.registerWithEmail(kRegisterWithEmailParams);

        verify(() => registerDatasource.registerWithEmail(any())).called(1);
        expect(response.fold((l) => l, (r) => r), isA<DatasourceError>());
      });
    });
  });
}
