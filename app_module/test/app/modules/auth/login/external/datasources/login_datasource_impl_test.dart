import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plantae/app/core/errors/auth_error.dart';
import 'package:plantae/app/core/services/auth/i_auth_service.dart';
import 'package:plantae/app/modules/auth/login/domain/params/login_with_email_params.dart';
import 'package:plantae/app/modules/auth/login/external/datasources/login_datasource_impl.dart';
import 'package:plantae/app/modules/auth/login/infra/datasources/i_login_datasource.dart';

class AuthServiceImpl extends Mock implements IAuthService {}

void main() {
  late final IAuthService authService;
  late final ILoginDatasource sut;

  const kLoginWithEmailParams = LoginWithEmailParams(email: '', password: '');

  setUpAll(() {
    authService = AuthServiceImpl();
    sut = LoginDatasourceImpl(authService);
  });

  setUp(() {
    registerFallbackValue(kLoginWithEmailParams);
  });

  group('Login Datasource | ', () {
    group('With Email | ', () {
      test('should be able to Login With Email using AuthService', () async {
        when(() => authService.loginWithEmail(any())).thenAnswer((_) async {});

        await sut.loginWithEmail(kLoginWithEmailParams);

        verify(() => authService.loginWithEmail(any())).called(1);
      });

      test('should throw a AuthError when AuthService fails', () async {
        when(() => authService.loginWithEmail(any())).thenThrow(AuthError(message: '', stackTrace: StackTrace.empty));

        expect(() => sut.loginWithEmail(kLoginWithEmailParams), throwsA(isA<AuthError>()));
      });
    });
  });
}
