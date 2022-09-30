import 'package:app_module/app/modules/plant/domain/errors/domain_errors.dart';
import 'package:app_module/app/modules/plant/domain/params/create_plant_params.dart';
import 'package:app_module/app/modules/plant/domain/repositories/i_plant_repository.dart';
import 'package:app_module/app/modules/plant/domain/usecases/create_plant_usecase.dart';
import 'package:core_module/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class PlantRepositoryMock extends Mock implements IPlantRepository {}

void main() {
  late final IPlantRepository plantRepository;
  late final ICreatePlantUsecase sut;

  const kCreatePlantParams = CreatePlantParams(name: 'plant_name', images: ['image_url']);

  setUpAll(() {
    plantRepository = PlantRepositoryMock();
    sut = CreatePlantUsecaseImpl(plantRepository);
  });

  setUp(() {
    registerFallbackValue(kCreatePlantParams);
  });

  group('Create Plant Usecase | ', () {
    test('should be able to Create a Plant calling the repository and return an Unit', () async {
      when(() => plantRepository.createPlant(any())).thenAnswer((_) async => right(unit));

      final response = await sut.execute(kCreatePlantParams);

      verify(() => plantRepository.createPlant(any())).called(1);
      expect(response.fold((l) => l, (r) => r), isA<Unit>());
    });

    test('should return on Left a MissingNameDomainError if name is empty', () async {
      when(() => plantRepository.createPlant(any())).thenAnswer((_) async => right(unit));

      const kNameErrorParams = CreatePlantParams(name: '', images: ['image_url']);

      final response = await sut.execute(kNameErrorParams);

      verifyNever(() => plantRepository.createPlant(any()));
      expect(response.fold((l) => l, (r) => r), isA<MissingNameDomainError>());
    });

    test('should return on Left a MissingImagesDomainError if name is empty', () async {
      when(() => plantRepository.createPlant(any())).thenAnswer((_) async => right(unit));

      const kNameErrorParams = CreatePlantParams(name: 'name', images: []);

      final response = await sut.execute(kNameErrorParams);

      verifyNever(() => plantRepository.createPlant(any()));
      expect(response.fold((l) => l, (r) => r), isA<MissingImagesDomainError>());
    });

    test('should return a DatasourceError if repository fails', () async {
      when(() => plantRepository.createPlant(any())).thenAnswer(
        (_) async => left(DatasourceError(message: 'Error', stackTrace: StackTrace.empty)),
      );

      final response = await sut.execute(kCreatePlantParams);

      verify(() => plantRepository.createPlant(any())).called(1);
      expect(response.fold((l) => l, (r) => r), isA<DatasourceError>());
    });
  });
}
