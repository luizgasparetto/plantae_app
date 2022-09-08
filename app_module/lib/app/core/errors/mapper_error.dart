import 'package:plantae/app/core/contracts/i_error.dart';

class MapperError extends IError {
  MapperError({required super.message, required super.stackTrace});
}
