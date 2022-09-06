class PlantEntity {
  final int id;
  final String name;
  final List<String> images;
  final DateTime createdAt;

  const PlantEntity({
    required this.id,
    required this.name,
    required this.images,
    required this.createdAt,
  });
}
