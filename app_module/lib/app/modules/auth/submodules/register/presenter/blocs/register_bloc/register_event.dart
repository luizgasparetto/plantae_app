part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {}

class RegisterWithEmailEvent extends RegisterEvent {
  final RegisterWithEmailParams params;

  RegisterWithEmailEvent(this.params);
}
