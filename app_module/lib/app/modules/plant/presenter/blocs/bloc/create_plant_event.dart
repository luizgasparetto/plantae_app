part of 'create_plant_bloc.dart';

@immutable
abstract class CreatePlantEvent {
  final CreatePlantParams params;

  const CreatePlantEvent(this.params);
}

class CreatePlantExecuteEvent extends CreatePlantEvent {
  const CreatePlantExecuteEvent(super.params);
}
