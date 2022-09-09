import '../../../../core/services/auth/i_auth_service.dart';
import '../../../../core/services/database/remote/i_remote_database_service.dart';
import '../../domain/entities/plant_entity.dart';
import '../../domain/params/create_plant_params.dart';
import '../../infra/datasources/i_plant_datasource.dart';
import '../mappers/plant_entity_mapper.dart';

class PlantDatasourceImpl implements IPlantDatasource {
  final IRemoteDatabaseService _remoteDatabaseService;
  final IAuthService _authService;

  const PlantDatasourceImpl(this._remoteDatabaseService, this._authService);

  @override
  Future<void> createPlant(CreatePlantParams params) async {
    final plantEntity = PlantEntity(id: hashCode, name: params.name, images: params.images);

    final plantEntityMap = PlantEntityMapper().toMap(plantEntity);

    return await _remoteDatabaseService.set('plants', _authService.currentUserId, plantEntityMap);
  }

  @override
  Future<List<PlantEntity>> getPlants() async {
    final plantsDocument = await _remoteDatabaseService.getDocument('plants', _authService.currentUserId);

    return plantsDocument.map((plant) => PlantEntityMapper().fromMap(plant)).toList();
  }
}
