import 'package:core_module/core.dart';

import '../entities/plant_entity.dart';
import '../params/create_plant_params.dart';

abstract class IPlantRepository {
  Future<Either<IError, Unit>> createPlant(CreatePlantParams params);
  Future<Either<IError, List<PlantEntity>>> getPlants();
}
