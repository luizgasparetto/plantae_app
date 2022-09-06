import 'package:plantae/app/core/contracts/i_error.dart';
import 'package:plantae/app/core/helpers/either.dart';
import 'package:plantae/app/modules/plant/domain/params/create_plant_params.dart';

abstract class IPlantRepository {
  Future<Either<IError, Unit>> createPlant(CreatePlantParams params);
}
