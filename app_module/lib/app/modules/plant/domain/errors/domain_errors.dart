import '../../../../core/errors/domain_error.dart';

class MissingNameDomainError extends DomainError {
  MissingNameDomainError({required super.message, required super.stackTrace});
}

class MissingImagesDomainError extends DomainError {
  MissingImagesDomainError({required super.message, required super.stackTrace});
}
