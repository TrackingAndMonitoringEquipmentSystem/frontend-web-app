import 'package:frontend_web_app/core/value_objects/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an un recoverable point. Termianating';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
