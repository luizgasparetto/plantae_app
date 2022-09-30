import 'package:app_module/app/modules/plant/domain/entities/plant_entity.dart';
import 'package:app_module/app/modules/plant/domain/repositories/i_plant_repository.dart';
import 'package:app_module/app/modules/plant/domain/usecases/get_plants_usecase.dart';
import 'package:core_module/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class PlantRepositoryMock extends Mock implements IPlantRepository {}

void main() {
  late final IPlantRepository plantRepository;
  late final IGetPlantsUsecase sut;

  final plantEntity = PlantEntity(id: 1, name: 'name', images: ['image_0']);

  setUpAll(() {
    plantRepository = PlantRepositoryMock();
    sut = GetPlantsUsecaseImpl(plantRepository);
  });

  group('Get Plants Usecase | ', () {
    test('should be able to call the repository and return a List of PlantEntity', () async {
      when(() => plantRepository.getPlants()).thenAnswer((_) async => right([plantEntity, plantEntity]));

      final response = await sut.execute();

      expect(response.fold((l) => l, (r) => r), isA<List<PlantEntity>>());
    });

    test('should throw a DatasourceError when repository fails', () async {
      when(() => plantRepository.getPlants()).thenAnswer(
        (_) async => left(DatasourceError(message: 'Error', stackTrace: StackTrace.empty)),
      );

      final response = await sut.execute();

      expect(response.fold((l) => l, (r) => r), isA<DatasourceError>());
    });
  });
}
