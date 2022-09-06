import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plantae/app/core/errors/domain_error.dart';
import 'package:plantae/app/core/helpers/either.dart';
import 'package:plantae/app/modules/auth/register/domain/params/register_with_email_params.dart';
import 'package:plantae/app/modules/auth/register/domain/usecases/register_with_email_usecase.dart';
import 'package:plantae/app/modules/auth/register/presenter/blocs/register_bloc/register_bloc.dart';

class RegisterWithEmailUsecaseMock extends Mock implements IRegisterWithEmailUsecase {}

void main() {
  late final IRegisterWithEmailUsecase registerWithEmailUsecase;

  const kRegisterWithEmailParams = RegisterWithEmailParams(email: 'email', password: 'password');

  setUpAll(() {
    registerWithEmailUsecase = RegisterWithEmailUsecaseMock();
  });

  setUp(() {
    registerFallbackValue(kRegisterWithEmailParams);
  });

  group('Register Bloc | ', () {
    blocTest<RegisterBloc, RegisterState>(
      'should emits RegisterSuccessfullState when register with email successfully',
      build: () {
        when(() => registerWithEmailUsecase.execute(any())).thenAnswer((_) async => right(unit));

        return RegisterBloc(registerWithEmailUsecase);
      },
      act: (bloc) => bloc.add(RegisterWithEmailEvent(kRegisterWithEmailParams)),
      expect: () => [RegisterLoadingState(), RegisterSuccessfullState()],
    );

    blocTest<RegisterBloc, RegisterState>(
      'should emits RegisterErrorState when usecase fails',
      build: () {
        when(() => registerWithEmailUsecase.execute(any())).thenAnswer(
          (_) async => left(DomainError(message: '', stackTrace: StackTrace.empty)),
        );

        return RegisterBloc(registerWithEmailUsecase);
      },
      act: (bloc) {
        const errorParams = RegisterWithEmailParams(email: '', password: '');

        return bloc.add(RegisterWithEmailEvent(errorParams));
      },
      expect: () => [RegisterLoadingState(), RegisterErrorState()],
    );
  });
}
