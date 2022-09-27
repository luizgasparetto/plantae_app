import '../../domain/entities/plant_entity.dart';
import '../../domain/params/create_plant_params.dart';

abstract class IPlantDatasource {
  Future<void> createPlant(CreatePlantParams params);
  Future<List<PlantEntity>> getPlants();
}
