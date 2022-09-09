import '../../../../core/contracts/i_error.dart';
import '../../../../core/helpers/either.dart';
import '../entities/plant_entity.dart';
import '../params/create_plant_params.dart';

abstract class IPlantRepository {
  Future<Either<IError, Unit>> createPlant(CreatePlantParams params);
  Future<Either<IError, List<PlantEntity>>> getPlants();
}
