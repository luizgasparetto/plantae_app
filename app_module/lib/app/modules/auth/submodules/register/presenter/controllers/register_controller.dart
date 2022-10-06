import '../../domain/params/register_with_email_params.dart';
import '../blocs/register_bloc/register_bloc.dart';

class RegisterController {
  final RegisterBloc _registerBloc;

  const RegisterController(this._registerBloc);

  void handleRegisterWithEmail() {
    const params = RegisterWithEmailParams(email: '', password: '');

    _registerBloc.add(RegisterWithEmailEvent(params));
  }
}
