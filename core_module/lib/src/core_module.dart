import 'package:dependency_module/dependency_module.dart';

import 'services/auth/firebase_auth_service_impl.dart';
import 'services/database/remote/firestore_remote_database_service_impl.dart';
import 'services/overlay/asuka_overlay_service_impl.dart';

class CoreModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => FirebaseAuthServiceImpl(FirebaseAuth.instance), export: true),
        Bind.singleton((i) => FirestoreRemoteDatabaseServiceImpl(FirebaseFirestore.instance), export: true),
        Bind.singleton((i) => AsukaOverlayServiceImpl(), export: true),
      ];
}
