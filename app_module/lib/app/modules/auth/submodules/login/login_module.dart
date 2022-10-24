import 'package:dependency_module/dependency_module.dart';

import 'domain/usecases/login_with_email_usecase.dart';
import 'external/datasources/login_datasource_impl.dart';
import 'infra/repositories/login_repository_impl.dart';
import 'presenter/blocs/login_bloc/login_bloc.dart';
import 'presenter/controllers/login_controller.dart';
import 'presenter/ui/login_page.dart';

class LoginModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => LoginDatasourceImpl(i())),
        Bind.factory((i) => LoginRepositoryImpl(i())),
        Bind.factory((i) => LoginWithEmailUsecaseImpl(i())),
        Bind.singleton((i) => LoginBloc(i(), i())),
        Bind.singleton((i) => LoginController(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const LoginPage()),
      ];
}
