import '../../../../core/contracts/i_error.dart';
import '../../../../core/helpers/either.dart';
import '../errors/domain_errors.dart';
import '../params/create_plant_params.dart';
import '../repositories/i_plant_repository.dart';

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
