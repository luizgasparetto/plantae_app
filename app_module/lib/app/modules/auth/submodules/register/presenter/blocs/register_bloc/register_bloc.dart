import 'package:core_module/core.dart';
import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/foundation.dart';

import '../../../domain/params/register_with_email_params.dart';
import '../../../domain/usecases/register_with_email_usecase.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IRegisterWithEmailUsecase _registerWithEmailUsecase;
  final IOverlayService _overlayService;

  RegisterBloc(this._registerWithEmailUsecase, this._overlayService) : super(RegisterInitialState()) {
    on<RegisterWithEmailEvent>((event, emit) async {
      await _registerWithEmailHandler(event, emit);
    });
  }

  Future<void> _registerWithEmailHandler(RegisterWithEmailEvent event, Emitter<RegisterState> emit) async {
    emit(RegisterLoadingState());

    final response = await _registerWithEmailUsecase.execute(event.params);

    response.fold(
      (l) {
        emit(RegisterErrorState());
        _overlayService.showErrorSnackBar(l.message);
      },
      (r) => emit(RegisterSuccessfullState()),
    );
  }
}
