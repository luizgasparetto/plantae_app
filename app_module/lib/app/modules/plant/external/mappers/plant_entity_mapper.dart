import 'package:core_module/core.dart';

import '../../domain/entities/plant_entity.dart';
import '../errors/external_errors.dart';

class PlantEntityMapper extends IMapper<PlantEntity> {
  @override
  PlantEntity fromMap(Map<String, dynamic> map) {
    try {
      return PlantEntity(
        id: map['id'],
        name: map['name'],
        images: map['images'],
        createdAt: map['createdAt'],
      );
    } catch (error, stacktrace) {
      throw PlantEntityMapperError(message: 'PlantEntity fromMap error', stackTrace: stacktrace);
    }
  }

  @override
  Map<String, dynamic> toMap(PlantEntity object) {
    try {
      return {
        'id': object.id,
        'name': object.name,
        'images': object.images,
        'createdAt': object.createdAt,
      };
    } catch (error, stacktrace) {
      throw PlantEntityMapperError(message: 'PlantEntity fromMap error', stackTrace: stacktrace);
    }
  }
}
