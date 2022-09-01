import 'package:plantae/app/core/errors/domain_error.dart';

class EmptyParamsDomainError extends DomainError {
  EmptyParamsDomainError({required super.message, required super.stackTrace});
}
