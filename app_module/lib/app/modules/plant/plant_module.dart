import 'package:dependency_module/dependency_module.dart';

import 'presenter/ui/plant_details_page.dart';

class PlantModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/details', child: (_, __) => const PlantDetailsPage()),
      ];
}
