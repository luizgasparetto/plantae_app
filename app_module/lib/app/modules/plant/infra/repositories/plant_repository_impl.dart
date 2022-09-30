import 'package:core_module/core.dart';

import '../../domain/entities/plant_entity.dart';
import '../../domain/params/create_plant_params.dart';
import '../../domain/repositories/i_plant_repository.dart';
import '../datasources/i_plant_datasource.dart';

class PlantRepositoryImpl implements IPlantRepository {
  final IPlantDatasource _plantDatasource;

  const PlantRepositoryImpl(this._plantDatasource);

  @override
  Future<Either<IError, Unit>> createPlant(CreatePlantParams params) async {
    try {
      await _plantDatasource.createPlant(params);

      return right(unit);
    } on IError catch (error) {
      return left(error);
    }
  }

  @override
  Future<Either<IError, List<PlantEntity>>> getPlants() async {
    try {
      final response = await _plantDatasource.getPlants();

      return right(response);
    } on IError catch (error) {
      return left(error);
    }
  }
}
