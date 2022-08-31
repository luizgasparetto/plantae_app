import 'package:plantae/app/modules/auth/login/domain/params/login_with_email_params.dart';

abstract class ILoginDatasource {
  Future<void> loginWithEmail(LoginWithEmailParams params);
}
