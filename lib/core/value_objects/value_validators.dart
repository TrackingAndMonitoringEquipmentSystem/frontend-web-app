import 'package:dartz/dartz.dart';
import 'package:frontend_web_app/core/value_objects/failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex = r"""^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(
        failedValue: input, message: 'รูปแบบอีเมลไม่ถูกต้อง'));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 8) {
    return right(input);
  } else {
    return left(
      ValueFailure.shortPassword(
        failedValue: input,
        message: 'รหัสผ่านต้องมีความยาว 8 ตัวขึ้นไป',
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateTelNo(String input) {
  if (input.startsWith('0')) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidPhoneNo(
        failedValue: input,
        message: 'เบอร์โทรต้องขึ้นต้นด้วย 0',
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateOnlyAlphabet({
  required String input,
  String? errorMessage,
}) {
  if (RegExp('^[ก-๛A-Za-z]+\$').hasMatch(input)) {
    return right(input);
  } else {
    return left(
      ValueFailure.hadNotAlphabet(
        failedValue: input,
        message: errorMessage ?? 'ตัวอักษรธรรมดาเท่านั้น',
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength({
  required String input,
  required int maxLength,
  String? errorMessage,
}) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(
        failedValue: input,
        message: errorMessage ?? 'ความยาวไม่เกิน $maxLength ตัวอักษร',
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateMinStringLength({
  required String input,
  required int minLength,
  String? errorMessage,
}) {
  if (input.length >= minLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.shortLength(
        failedValue: input,
        message: errorMessage ?? 'ความยาวตั้งแต่ $minLength ตัวอักษรขึ้นไป',
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty({
  required String input,
  String? errorMessage,
}) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      ValueFailure.empty(
        failedValue: input,
        message: errorMessage ?? 'กรุณากรอกค่า',
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateFixedLength({
  required String input,
  required int fixedLength,
  String? errorMessage,
}) {
  if (input.length == fixedLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.missMatchLength(
        failedValue: input,
        message: errorMessage ?? 'ความยาว $fixedLength ตัวอักษร',
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateNumberOnly({
  required String input,
  String? errorMessage,
}) {
  if (RegExp('^[0-9]+\$').hasMatch(input)) {
    return right(input);
  } else {
    return left(
      ValueFailure.hadNotNumeric(
        failedValue: input,
        message: errorMessage ?? 'ตัวเลขเท่านั้น',
      ),
    );
  }
}
