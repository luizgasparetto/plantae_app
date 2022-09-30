import 'package:core_module/core.dart';

class Flavors {
  static final Flavors instance = Flavors._();

  Flavors._();

  factory Flavors() => instance;

  static late final FlavorTypeEnum flavorType;
}
