class PlantEntity {
  final int id;
  final String name;
  final List<String> images;
  final DateTime createdAt;

  PlantEntity({
    required this.id,
    required this.name,
    required this.images,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();
}
