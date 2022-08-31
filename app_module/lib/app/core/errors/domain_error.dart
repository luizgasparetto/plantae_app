import 'package:plantae/app/core/contracts/i_error.dart';

class DomainError extends IError {
  DomainError({required super.message, required super.stackTrace});
}
