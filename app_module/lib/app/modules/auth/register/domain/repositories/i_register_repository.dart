import 'package:core_module/core.dart';

import '../params/register_with_email_params.dart';

abstract class IRegisterRepository {
  Future<Either<IError, Unit>> registerWithEmail(RegisterWithEmailParams params);
}
