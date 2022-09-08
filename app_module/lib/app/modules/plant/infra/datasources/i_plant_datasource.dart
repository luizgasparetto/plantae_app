import 'package:plantae/app/modules/plant/domain/params/create_plant_params.dart';

abstract class IPlantDatasource {
  Future<void> createPlant(CreatePlantParams params);
}
