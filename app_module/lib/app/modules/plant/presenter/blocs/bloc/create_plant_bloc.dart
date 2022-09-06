import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/foundation.dart';
import 'package:plantae/app/modules/plant/domain/usecases/create_plant_usecase.dart';

import '../../../domain/params/create_plant_params.dart';

part 'create_plant_event.dart';
part 'create_plant_state.dart';

class CreatePlantBloc extends Bloc<CreatePlantEvent, CreatePlantState> {
  final ICreatePlantUsecase _createPlantUsecase;

  CreatePlantBloc(this._createPlantUsecase) : super(CreatePlantInitialState()) {
    on<CreatePlantExecuteEvent>(_createPlantHandler);
  }

  Future<void> _createPlantHandler(CreatePlantEvent event, Emitter<CreatePlantState> emit) async {
    emit(CreatePlantLoadingState());

    final response = await _createPlantUsecase.execute(event.params);

    response.fold(
      (l) => emit(CreatePlantErrorState()),
      (r) => emit(CreatePlantSuccessfullState()),
    );
  }
}
