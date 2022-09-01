import 'package:plantae/app/core/contracts/i_error.dart';

class AuthError extends IError {
  AuthError({required super.message, required super.stackTrace});
}
