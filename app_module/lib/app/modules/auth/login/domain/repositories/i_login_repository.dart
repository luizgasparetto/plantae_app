import 'package:core_module/core.dart';

import '../params/login_with_email_params.dart';

abstract class ILoginRepository {
  Future<Either<IError, Unit>> loginWithEmail(LoginWithEmailParams params);
}
