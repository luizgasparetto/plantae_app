import 'package:plantae/app/modules/auth/login/domain/params/login_with_email_params.dart';
import 'package:plantae/app/modules/auth/register/domain/params/register_with_email_params.dart';

abstract class IAuthService {
  Future<void> registerWithEmail(RegisterWithEmailParams params);
  Future<void> loginWithEmail(LoginWithEmailParams params);
  Future<void> logout();
}
