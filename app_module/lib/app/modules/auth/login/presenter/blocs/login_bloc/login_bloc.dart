import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/foundation.dart';
import 'package:plantae/app/modules/auth/login/domain/params/login_with_email_params.dart';
import 'package:plantae/app/modules/auth/login/domain/usecases/login_with_email_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginWithEmailUsecase _loginWithEmailUsecase;

  LoginBloc(this._loginWithEmailUsecase) : super(LoginInitialState()) {
    on<LoginWithEmailEvent>((event, emit) async {
      await _loginWithEmailHandler(event, emit);
    });
  }

  Future<void> _loginWithEmailHandler(LoginWithEmailEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoadingState());

    final response = await _loginWithEmailUsecase.execute(event.params);

    response.fold(
      (l) => emit(LoginUnloggedState()),
      (r) => emit(LoginLoggedState()),
    );
  }
}
