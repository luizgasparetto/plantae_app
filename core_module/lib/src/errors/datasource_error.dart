import '../contracts/i_error.dart';

class DatasourceError extends IError {
  DatasourceError({required super.message, required super.stackTrace});
}
