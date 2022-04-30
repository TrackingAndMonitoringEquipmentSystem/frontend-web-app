import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required String failedValue,
    required String message,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required String failedValue,
    required String message,
  }) = ShortPassword<T>;

  const factory ValueFailure.invalidPhoneNo({
    required String failedValue,
    required String message,
  }) = InvalidPhoneNo<T>;

  const factory ValueFailure.hadNotAlphabet({
    required String failedValue,
    required String message,
  }) = HadNotAlphabet<T>;

  const factory ValueFailure.exceedingLength({
    required String failedValue,
    required String message,
  }) = ExeedingLength<T>;

  const factory ValueFailure.shortLength({
    required String failedValue,
    required String message,
  }) = ShortLength<T>;

  const factory ValueFailure.empty({
    required String failedValue,
    required String message,
  }) = Empty<T>;

  const factory ValueFailure.missMatchLength({
    required String failedValue,
    required String message,
  }) = MissMatchLength<T>;

  const factory ValueFailure.hadNotNumeric({
    required String failedValue,
    required String message,
  }) = HadNotNumeric<T>;
}
