import 'package:plantae/app/core/contracts/i_error.dart';
import 'package:plantae/app/core/helpers/either.dart';
import 'package:plantae/app/modules/plant/domain/entities/plant_entity.dart';
import 'package:plantae/app/modules/plant/domain/repositories/i_plant_repository.dart';

abstract class IGetPlantsUsecase {
  Future<Either<IError, List<PlantEntity>>> execute();
}

class GetPlantsUsecaseImpl implements IGetPlantsUsecase {
  final IPlantRepository _plantRepository;

  const GetPlantsUsecaseImpl(this._plantRepository);

  @override
  Future<Either<IError, List<PlantEntity>>> execute() async {
    return await _plantRepository.getPlants();
  }
}
