import 'package:flutter/cupertino.dart';

import '../../domain/params/login_with_email_params.dart';
import '../blocs/login_bloc/login_bloc.dart';

class LoginController {
  final LoginBloc loginBloc;

  LoginController(this.loginBloc);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void handleLoginWithEmail() {
    final email = emailController.text;
    final password = passwordController.text;

    final params = LoginWithEmailParams(email: email, password: password);

    loginBloc.add(LoginWithEmailEvent(params));
  }
}
