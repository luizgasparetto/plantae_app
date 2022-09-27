import 'app/core/enums/flavor_type_enum.dart';

class Flavors {
  static final Flavors instance = Flavors._();

  Flavors._();

  factory Flavors() => instance;

  static late final FlavorTypeEnum flavorType;
}
