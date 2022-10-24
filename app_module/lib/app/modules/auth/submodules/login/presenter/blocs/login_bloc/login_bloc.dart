import 'package:core_module/core.dart';
import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/foundation.dart';

import '../../../domain/params/login_with_email_params.dart';
import '../../../domain/usecases/login_with_email_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginWithEmailUsecase _loginWithEmailUsecase;
  final IOverlayService _overlayService;

  LoginBloc(this._loginWithEmailUsecase, this._overlayService) : super(LoginInitialState()) {
    on<LoginWithEmailEvent>((event, emit) async {
      await _loginWithEmailHandler(event, emit);
    });
  }

  Future<void> _loginWithEmailHandler(LoginWithEmailEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoadingState());

    final response = await _loginWithEmailUsecase.execute(event.params);

    response.fold(
      (l) {
        emit(LoginUnloggedState());
        _overlayService.showErrorSnackBar(l.message);
      },
      (r) => emit(LoginLoggedState()),
    );
  }
}
