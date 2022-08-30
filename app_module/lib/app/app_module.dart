import 'package:dependency_module/dependency_module.dart';
import 'package:plantae/app/modules/home.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const Home()),
      ];
}
