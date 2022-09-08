import 'package:plantae/app/core/contracts/i_error.dart';

class DatabaseError extends IError {
  DatabaseError({required super.message, required super.stackTrace});
}
