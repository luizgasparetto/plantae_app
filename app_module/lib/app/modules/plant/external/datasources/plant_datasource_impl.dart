import 'package:plantae/app/modules/plant/domain/params/create_plant_params.dart';
import 'package:plantae/app/modules/plant/infra/datasources/i_plant_datasource.dart';

class PlantDatasourceImpl implements IPlantDatasource {
  @override
  Future<void> createPlant(CreatePlantParams params) async {
    throw UnimplementedError();
  }
}
