import 'package:app_module/app/modules/plant/domain/entities/plant_entity.dart';
import 'package:app_module/app/modules/plant/external/mappers/plant_entity_mapper.dart';
import 'package:core_module/core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final PlantEntityMapper sut;

  final plantMapSuccess = {
    'id': 1,
    'name': 'name',
    'images': ['image_1']
  };

  const plantMapError = {'id': 1, 'nome': 'name', 'images': []};

  final plantEntity = PlantEntity(id: 1, name: 'name', images: ['image_0']);

  setUpAll(() {
    sut = PlantEntityMapper();
  });

  group('Plant Entity Mapper | ', () {
    test('should be able to convert a Map to a PlantEntity', () {
      final response = sut.fromMap(plantMapSuccess);

      expect(response, isA<PlantEntity>());
      expect(response.id, equals(1));
      expect(response.name, equals('name'));
      expect(response.images, equals(['image_1']));
    });

    test('should throw a MapperError when fails to parse a fromMap', () {
      expect(() => sut.fromMap(plantMapError), throwsA(isA<MapperError>()));
    });

    test('should be able to convert a PlantEntity to a Map', () {
      final response = sut.toMap(plantEntity);

      expect(response['id'], equals(1));
      expect(response['name'], equals('name'));
      expect(response['images'], equals(['image_0']));
    });
  });
}
