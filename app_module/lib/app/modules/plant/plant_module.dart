import 'package:app_module/app/modules/plant/presenter/ui/plant_details_page.dart';
import 'package:dependency_module/dependency_module.dart';

class PlantModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/details', child: (_, __) => const PlantDetailsPage()),
      ];
}
