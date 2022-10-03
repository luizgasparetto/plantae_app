import 'package:app_module/app/modules/auth/submodules/login/domain/params/login_with_email_params.dart';
import 'package:app_module/app/modules/auth/submodules/login/domain/usecases/login_with_email_usecase.dart';
import 'package:app_module/app/modules/auth/submodules/login/presenter/blocs/login_bloc/login_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:core_module/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class LoginWithEmailUsecaseMock extends Mock implements ILoginWithEmailUsecase {}

void main() {
  late final ILoginWithEmailUsecase loginWithEmailUsecase;

  const kLoginWithEmailParams = LoginWithEmailParams(email: 'email', password: 'password');

  setUpAll(() {
    loginWithEmailUsecase = LoginWithEmailUsecaseMock();
  });

  setUp(() {
    registerFallbackValue(kLoginWithEmailParams);
  });

  group('Login Bloc | ', () {
    blocTest<LoginBloc, LoginState>(
      'should emits LoginLoggedState when logged with email successfully',
      build: () {
        when(() => loginWithEmailUsecase.execute(any())).thenAnswer((_) async => right(unit));

        return LoginBloc(loginWithEmailUsecase);
      },
      act: (bloc) => bloc.add(LoginWithEmailEvent(kLoginWithEmailParams)),
      expect: () => [LoginLoadingState(), LoginLoggedState()],
    );

    blocTest<LoginBloc, LoginState>(
      'should emits LoginUnloggedState when usecase fails',
      build: () {
        when(() => loginWithEmailUsecase.execute(any())).thenAnswer(
          (_) async => left(DomainError(message: '', stackTrace: StackTrace.empty)),
        );

        return LoginBloc(loginWithEmailUsecase);
      },
      act: (bloc) {
        const errorParams = LoginWithEmailParams(email: '', password: '');

        return bloc.add(LoginWithEmailEvent(errorParams));
      },
      expect: () => [LoginLoadingState(), LoginUnloggedState()],
    );
  });
}
