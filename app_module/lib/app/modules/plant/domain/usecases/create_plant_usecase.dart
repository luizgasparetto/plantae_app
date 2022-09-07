import 'package:plantae/app/core/contracts/i_error.dart';
import 'package:plantae/app/core/helpers/either.dart';
import 'package:plantae/app/modules/plant/domain/errors/domain_errors.dart';
import 'package:plantae/app/modules/plant/domain/params/create_plant_params.dart';
import 'package:plantae/app/modules/plant/domain/repositories/i_plant_repository.dart';

abstract class ICreatePlantUsecase {
  Future<Either<IError, Unit>> execute(CreatePlantParams params);
}

class CreatePlantUsecaseImpl implements ICreatePlantUsecase {
  final IPlantRepository _plantRepository;

  const CreatePlantUsecaseImpl(this._plantRepository);

  @override
  Future<Either<IError, Unit>> execute(CreatePlantParams params) async {
    if (params.name.isEmpty) {
      return left(MissingNameDomainError(message: 'Missing name', stackTrace: StackTrace.current));
    }

    if (params.images.isEmpty) {
      return left(MissingImagesDomainError(message: 'Missing images', stackTrace: StackTrace.current));
    }

    return await _plantRepository.createPlant(params);
  }
}
