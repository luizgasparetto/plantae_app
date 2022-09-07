import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plantae/app/core/errors/domain_error.dart';
import 'package:plantae/app/core/helpers/either.dart';
import 'package:plantae/app/modules/plant/domain/params/create_plant_params.dart';
import 'package:plantae/app/modules/plant/domain/usecases/create_plant_usecase.dart';
import 'package:plantae/app/modules/plant/presenter/blocs/bloc/create_plant_bloc.dart';

class CreatePlantUsecaseMock extends Mock implements ICreatePlantUsecase {}

void main() {
  late final ICreatePlantUsecase createPlantUsecase;

  const kCreatePlantParams = CreatePlantParams(name: '', images: []);

  setUpAll(() {
    createPlantUsecase = CreatePlantUsecaseMock();
  });

  setUp(() {
    registerFallbackValue(kCreatePlantParams);
  });

  group('Create Plant Bloc |', () {
    // should emit a CreatePlantSuccessfullState if calls usecase successfully
    blocTest<CreatePlantBloc, CreatePlantState>(
      'should emit a CreatePlantSuccessfullState if calls usecase successfully',
      build: () {
        when(() => createPlantUsecase.execute(any())).thenAnswer((_) async => right(unit));

        return CreatePlantBloc(createPlantUsecase);
      },
      act: (bloc) => bloc.add(const CreatePlantExecuteEvent(kCreatePlantParams)),
      expect: () => [CreatePlantLoadingState(), CreatePlantSuccessfullState()],
    );

    blocTest<CreatePlantBloc, CreatePlantState>(
      'should emit a CreatePlantErrorState if usecase fails',
      build: () {
        when(() => createPlantUsecase.execute(any())).thenAnswer(
          (_) async => left(DomainError(message: '', stackTrace: StackTrace.empty)),
        );

        return CreatePlantBloc(createPlantUsecase);
      },
      act: (bloc) => bloc.add(const CreatePlantExecuteEvent(kCreatePlantParams)),
      expect: () => [CreatePlantLoadingState(), CreatePlantErrorState()],
    );
  });
}
