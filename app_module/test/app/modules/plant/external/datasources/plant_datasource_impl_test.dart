import 'package:app_module/app/modules/plant/domain/params/create_plant_params.dart';
import 'package:app_module/app/modules/plant/external/datasources/plant_datasource_impl.dart';
import 'package:app_module/app/modules/plant/infra/datasources/i_plant_datasource.dart';
import 'package:core_module/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class RemoteDatabaseServiceMock extends Mock implements IRemoteDatabaseService {}

class AuthServiceMock extends Mock implements IAuthService {}

void main() {
  late final IRemoteDatabaseService remoteDatabaseService;
  late final IAuthService authService;
  late final IPlantDatasource sut;

  const kCreatePlantParams = CreatePlantParams(name: 'plant_name', images: ['image_0']);

  const kPlantMap = {
    'id': 1,
    'name': 'name',
    'images': ['image_0']
  };

  setUpAll(() {
    remoteDatabaseService = RemoteDatabaseServiceMock();
    authService = AuthServiceMock();
    sut = PlantDatasourceImpl(remoteDatabaseService, authService);
  });

  group('Plant Datasource | ', () {
    group('Create | ', () {
      test('should be able able to create a plant successfully', () async {
        when(() => authService.currentUserId).thenReturn("id");
        when(() => remoteDatabaseService.set(any(), any(), any())).thenAnswer((_) async {});

        await sut.createPlant(kCreatePlantParams);

        verify(() => remoteDatabaseService.set(any(), any(), any())).called(1);
      });

      test('should throw a DatabaseError when remote database fails trying to create a plant', () async {
        when(() => authService.currentUserId).thenReturn("id");
        when(() => remoteDatabaseService.set(any(), any(), any())).thenThrow(
          DatabaseError(message: 'Error', stackTrace: StackTrace.empty),
        );

        expect(() => sut.createPlant(kCreatePlantParams), throwsA(isA<DatabaseError>()));
      });
    });

    group('Get Plants | ', () {
      test('should be able to get a List of PlantEntity successfully', () async {
        when(() => authService.currentUserId).thenReturn("id");
        when(() => remoteDatabaseService.getDocument(any(), any())).thenAnswer((_) async => [kPlantMap]);

        final response = await sut.getPlants();

        expect(response.first.name, equals('name'));
      });

      test('should throw a DatabaseError when fails to get the plants', () async {
        when(() => authService.currentUserId).thenReturn("id");
        when(() => remoteDatabaseService.getDocument(any(), any())).thenThrow(
          DatabaseError(message: 'Error', stackTrace: StackTrace.empty),
        );

        expect(() => sut.getPlants(), throwsA(isA<DatabaseError>()));
      });
    });
  });
}
