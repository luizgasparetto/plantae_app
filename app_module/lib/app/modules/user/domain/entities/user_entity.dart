import '../../../plant/domain/entities/plant_entity.dart';

class UserEntity {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String imageUrl;
  final List<PlantEntity> plants;

  const UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.imageUrl,
    required this.plants,
  });
}
