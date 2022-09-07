part of 'create_plant_bloc.dart';

@immutable
abstract class CreatePlantState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CreatePlantInitialState extends CreatePlantState {}

class CreatePlantLoadingState extends CreatePlantState {}

class CreatePlantSuccessfullState extends CreatePlantState {}

class CreatePlantErrorState extends CreatePlantState {}
