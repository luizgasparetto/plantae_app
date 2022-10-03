part of 'register_bloc.dart';

@immutable
abstract class RegisterState extends Equatable {
  @override
  List<Object?> get props => [];
}

class RegisterInitialState extends RegisterState {}

class RegisterLoadingState extends RegisterState {}

class RegisterSuccessfullState extends RegisterState {}

class RegisterErrorState extends RegisterState {}
