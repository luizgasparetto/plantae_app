import 'package:dependency_module/dependency_module.dart';

import 'presenter/ui/search_page.dart';

class SearchModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const SearchPage()),
      ];
}
