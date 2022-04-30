import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_web_app/core/utils/value_object_constant.dart'
    as value_object_constant;
import 'package:frontend_web_app/core/value_objects/failures.dart';
import 'package:frontend_web_app/core/value_objects/value_objects.dart';
import 'package:frontend_web_app/core/value_objects/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(value: validateEmailAddress(input));
  }

  const EmailAddress._({required this.value});
  factory EmailAddress.fromJson(Map<String, dynamic> json) {
    return EmailAddress(json['email'] as String);
  }
  Map<String, dynamic> toJson() {
    return {'email': value.fold((l) => '', (r) => r)};
  }
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      value: validateStringNotEmpty(input: input).flatMap(
        (prevValue) => validatePassword(prevValue),
      ),
    );
  }

  const Password._({required this.value});
}

class TelNo extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory TelNo(String input) {
    return TelNo._(
      value: validateStringNotEmpty(input: input).flatMap(
        (prevValue) => validateTelNo(prevValue).flatMap(
          (prevValue) => validateNumberOnly(input: prevValue).flatMap(
            (prevValue) =>
                validateFixedLength(input: prevValue, fixedLength: 10),
          ),
        ),
      ),
    );
  }

  const TelNo._({required this.value});

  String toInternationalTelNo() {
    final str = super.getOrCrash();
    return '${value_object_constant.localTelNoCode} ${str.substring(0, 4)} ${str.substring(4, 7)} ${str.substring(7, 10)}';
  }

  String toLocalTelNo() {
    final str = super.getOrCrash();
    return '${str.substring(0, 3)}-${str.substring(3, 6)}-${str.substring(6, 10)}';
  }

  factory TelNo.fromJson(Map<String, dynamic> json) {
    return TelNo(json['tel'] as String);
  }
  Map<String, dynamic> toJson() {
    return {'tel': value.fold((l) => '', (r) => r)};
  }
}

class FirstName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FirstName(String input) {
    return FirstName._(
      value: validateStringNotEmpty(input: input).flatMap(
        (prevValue) =>
            validateMinStringLength(input: prevValue, minLength: 2).flatMap(
          (prevValue) => validateMaxStringLength(
            input: prevValue,
            maxLength: 30,
          ).flatMap((prevValue) => validateOnlyAlphabet(input: prevValue)),
        ),
      ),
    );
  }

  const FirstName._({@JsonKey(name: 'firstName') required this.value});

  factory FirstName.fromJson(Map<String, dynamic> json) {
    return FirstName(json['firstName'] as String);
  }

  Map<String, dynamic> toJson() {
    return {'firstName': value.fold((l) => '', (r) => r)};
  }
}

class LastName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LastName(String input) {
    return LastName._(
      value: validateStringNotEmpty(input: input).flatMap(
        (prevValue) =>
            validateMinStringLength(input: prevValue, minLength: 2).flatMap(
          (prevValue) => validateMaxStringLength(
            input: prevValue,
            maxLength: 30,
          ).flatMap((prevValue) => validateOnlyAlphabet(input: prevValue)),
        ),
      ),
    );
  }

  const LastName._({required this.value});
  factory LastName.fromJson(Map<String, dynamic> json) {
    return LastName(json['lastName'] as String);
  }
  Map<String, dynamic> toJson() {
    return {'fastName': value.fold((l) => '', (r) => r)};
  }
}

class Otp extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Otp(String input) {
    return Otp._(
      value: validateStringNotEmpty(input: input).flatMap(
        (prevValue) => validateNumberOnly(
          input: prevValue,
        ).flatMap(
          (prevValue) =>
              validateMaxStringLength(input: prevValue, maxLength: 6),
        ),
      ),
    );
  }

  const Otp._({required this.value});
}
