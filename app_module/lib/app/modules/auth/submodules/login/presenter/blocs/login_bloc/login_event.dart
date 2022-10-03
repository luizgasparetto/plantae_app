part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginWithEmailEvent extends LoginEvent {
  final LoginWithEmailParams params;

  LoginWithEmailEvent(this.params);
}
