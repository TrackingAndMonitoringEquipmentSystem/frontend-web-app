// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  String get failedValue => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String message) invalidEmail,
    required TResult Function(String failedValue, String message) shortPassword,
    required TResult Function(String failedValue, String message)
        invalidPhoneNo,
    required TResult Function(String failedValue, String message)
        hadNotAlphabet,
    required TResult Function(String failedValue, String message)
        exceedingLength,
    required TResult Function(String failedValue, String message) shortLength,
    required TResult Function(String failedValue, String message) empty,
    required TResult Function(String failedValue, String message)
        missMatchLength,
    required TResult Function(String failedValue, String message) hadNotNumeric,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPhoneNo<T> value) invalidPhoneNo,
    required TResult Function(HadNotAlphabet<T> value) hadNotAlphabet,
    required TResult Function(ExeedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MissMatchLength<T> value) missMatchLength,
    required TResult Function(HadNotNumeric<T> value) hadNotNumeric,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({String failedValue, String message});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue, String message});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue, required this.message});

  @override
  final String failedValue;
  @override
  final String message;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String message) invalidEmail,
    required TResult Function(String failedValue, String message) shortPassword,
    required TResult Function(String failedValue, String message)
        invalidPhoneNo,
    required TResult Function(String failedValue, String message)
        hadNotAlphabet,
    required TResult Function(String failedValue, String message)
        exceedingLength,
    required TResult Function(String failedValue, String message) shortLength,
    required TResult Function(String failedValue, String message) empty,
    required TResult Function(String failedValue, String message)
        missMatchLength,
    required TResult Function(String failedValue, String message) hadNotNumeric,
  }) {
    return invalidEmail(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
  }) {
    return invalidEmail?.call(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPhoneNo<T> value) invalidPhoneNo,
    required TResult Function(HadNotAlphabet<T> value) hadNotAlphabet,
    required TResult Function(ExeedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MissMatchLength<T> value) missMatchLength,
    required TResult Function(HadNotNumeric<T> value) hadNotNumeric,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail(
      {required final String failedValue,
      required final String message}) = _$InvalidEmail<T>;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue, String message});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue, required this.message});

  @override
  final String failedValue;
  @override
  final String message;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String message) invalidEmail,
    required TResult Function(String failedValue, String message) shortPassword,
    required TResult Function(String failedValue, String message)
        invalidPhoneNo,
    required TResult Function(String failedValue, String message)
        hadNotAlphabet,
    required TResult Function(String failedValue, String message)
        exceedingLength,
    required TResult Function(String failedValue, String message) shortLength,
    required TResult Function(String failedValue, String message) empty,
    required TResult Function(String failedValue, String message)
        missMatchLength,
    required TResult Function(String failedValue, String message) hadNotNumeric,
  }) {
    return shortPassword(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
  }) {
    return shortPassword?.call(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPhoneNo<T> value) invalidPhoneNo,
    required TResult Function(HadNotAlphabet<T> value) hadNotAlphabet,
    required TResult Function(ExeedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MissMatchLength<T> value) missMatchLength,
    required TResult Function(HadNotNumeric<T> value) hadNotNumeric,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword(
      {required final String failedValue,
      required final String message}) = _$ShortPassword<T>;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidPhoneNoCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPhoneNoCopyWith(
          InvalidPhoneNo<T> value, $Res Function(InvalidPhoneNo<T>) then) =
      _$InvalidPhoneNoCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue, String message});
}

/// @nodoc
class _$InvalidPhoneNoCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPhoneNoCopyWith<T, $Res> {
  _$InvalidPhoneNoCopyWithImpl(
      InvalidPhoneNo<T> _value, $Res Function(InvalidPhoneNo<T>) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNo<T>));

  @override
  InvalidPhoneNo<T> get _value => super._value as InvalidPhoneNo<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
  }) {
    return _then(InvalidPhoneNo<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidPhoneNo<T> implements InvalidPhoneNo<T> {
  const _$InvalidPhoneNo({required this.failedValue, required this.message});

  @override
  final String failedValue;
  @override
  final String message;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhoneNo(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidPhoneNo<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $InvalidPhoneNoCopyWith<T, InvalidPhoneNo<T>> get copyWith =>
      _$InvalidPhoneNoCopyWithImpl<T, InvalidPhoneNo<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String message) invalidEmail,
    required TResult Function(String failedValue, String message) shortPassword,
    required TResult Function(String failedValue, String message)
        invalidPhoneNo,
    required TResult Function(String failedValue, String message)
        hadNotAlphabet,
    required TResult Function(String failedValue, String message)
        exceedingLength,
    required TResult Function(String failedValue, String message) shortLength,
    required TResult Function(String failedValue, String message) empty,
    required TResult Function(String failedValue, String message)
        missMatchLength,
    required TResult Function(String failedValue, String message) hadNotNumeric,
  }) {
    return invalidPhoneNo(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
  }) {
    return invalidPhoneNo?.call(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (invalidPhoneNo != null) {
      return invalidPhoneNo(failedValue, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPhoneNo<T> value) invalidPhoneNo,
    required TResult Function(HadNotAlphabet<T> value) hadNotAlphabet,
    required TResult Function(ExeedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MissMatchLength<T> value) missMatchLength,
    required TResult Function(HadNotNumeric<T> value) hadNotNumeric,
  }) {
    return invalidPhoneNo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
  }) {
    return invalidPhoneNo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (invalidPhoneNo != null) {
      return invalidPhoneNo(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNo<T> implements ValueFailure<T> {
  const factory InvalidPhoneNo(
      {required final String failedValue,
      required final String message}) = _$InvalidPhoneNo<T>;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidPhoneNoCopyWith<T, InvalidPhoneNo<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadNotAlphabetCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $HadNotAlphabetCopyWith(
          HadNotAlphabet<T> value, $Res Function(HadNotAlphabet<T>) then) =
      _$HadNotAlphabetCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue, String message});
}

/// @nodoc
class _$HadNotAlphabetCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $HadNotAlphabetCopyWith<T, $Res> {
  _$HadNotAlphabetCopyWithImpl(
      HadNotAlphabet<T> _value, $Res Function(HadNotAlphabet<T>) _then)
      : super(_value, (v) => _then(v as HadNotAlphabet<T>));

  @override
  HadNotAlphabet<T> get _value => super._value as HadNotAlphabet<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
  }) {
    return _then(HadNotAlphabet<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HadNotAlphabet<T> implements HadNotAlphabet<T> {
  const _$HadNotAlphabet({required this.failedValue, required this.message});

  @override
  final String failedValue;
  @override
  final String message;

  @override
  String toString() {
    return 'ValueFailure<$T>.hadNotAlphabet(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HadNotAlphabet<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $HadNotAlphabetCopyWith<T, HadNotAlphabet<T>> get copyWith =>
      _$HadNotAlphabetCopyWithImpl<T, HadNotAlphabet<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String message) invalidEmail,
    required TResult Function(String failedValue, String message) shortPassword,
    required TResult Function(String failedValue, String message)
        invalidPhoneNo,
    required TResult Function(String failedValue, String message)
        hadNotAlphabet,
    required TResult Function(String failedValue, String message)
        exceedingLength,
    required TResult Function(String failedValue, String message) shortLength,
    required TResult Function(String failedValue, String message) empty,
    required TResult Function(String failedValue, String message)
        missMatchLength,
    required TResult Function(String failedValue, String message) hadNotNumeric,
  }) {
    return hadNotAlphabet(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
  }) {
    return hadNotAlphabet?.call(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (hadNotAlphabet != null) {
      return hadNotAlphabet(failedValue, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPhoneNo<T> value) invalidPhoneNo,
    required TResult Function(HadNotAlphabet<T> value) hadNotAlphabet,
    required TResult Function(ExeedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MissMatchLength<T> value) missMatchLength,
    required TResult Function(HadNotNumeric<T> value) hadNotNumeric,
  }) {
    return hadNotAlphabet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
  }) {
    return hadNotAlphabet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (hadNotAlphabet != null) {
      return hadNotAlphabet(this);
    }
    return orElse();
  }
}

abstract class HadNotAlphabet<T> implements ValueFailure<T> {
  const factory HadNotAlphabet(
      {required final String failedValue,
      required final String message}) = _$HadNotAlphabet<T>;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $HadNotAlphabetCopyWith<T, HadNotAlphabet<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExeedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExeedingLengthCopyWith(
          ExeedingLength<T> value, $Res Function(ExeedingLength<T>) then) =
      _$ExeedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue, String message});
}

/// @nodoc
class _$ExeedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExeedingLengthCopyWith<T, $Res> {
  _$ExeedingLengthCopyWithImpl(
      ExeedingLength<T> _value, $Res Function(ExeedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExeedingLength<T>));

  @override
  ExeedingLength<T> get _value => super._value as ExeedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
  }) {
    return _then(ExeedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExeedingLength<T> implements ExeedingLength<T> {
  const _$ExeedingLength({required this.failedValue, required this.message});

  @override
  final String failedValue;
  @override
  final String message;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExeedingLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ExeedingLengthCopyWith<T, ExeedingLength<T>> get copyWith =>
      _$ExeedingLengthCopyWithImpl<T, ExeedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String message) invalidEmail,
    required TResult Function(String failedValue, String message) shortPassword,
    required TResult Function(String failedValue, String message)
        invalidPhoneNo,
    required TResult Function(String failedValue, String message)
        hadNotAlphabet,
    required TResult Function(String failedValue, String message)
        exceedingLength,
    required TResult Function(String failedValue, String message) shortLength,
    required TResult Function(String failedValue, String message) empty,
    required TResult Function(String failedValue, String message)
        missMatchLength,
    required TResult Function(String failedValue, String message) hadNotNumeric,
  }) {
    return exceedingLength(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
  }) {
    return exceedingLength?.call(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPhoneNo<T> value) invalidPhoneNo,
    required TResult Function(HadNotAlphabet<T> value) hadNotAlphabet,
    required TResult Function(ExeedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MissMatchLength<T> value) missMatchLength,
    required TResult Function(HadNotNumeric<T> value) hadNotNumeric,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExeedingLength<T> implements ValueFailure<T> {
  const factory ExeedingLength(
      {required final String failedValue,
      required final String message}) = _$ExeedingLength<T>;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ExeedingLengthCopyWith<T, ExeedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortLengthCopyWith(
          ShortLength<T> value, $Res Function(ShortLength<T>) then) =
      _$ShortLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue, String message});
}

/// @nodoc
class _$ShortLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortLengthCopyWith<T, $Res> {
  _$ShortLengthCopyWithImpl(
      ShortLength<T> _value, $Res Function(ShortLength<T>) _then)
      : super(_value, (v) => _then(v as ShortLength<T>));

  @override
  ShortLength<T> get _value => super._value as ShortLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
  }) {
    return _then(ShortLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShortLength<T> implements ShortLength<T> {
  const _$ShortLength({required this.failedValue, required this.message});

  @override
  final String failedValue;
  @override
  final String message;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortLength(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ShortLengthCopyWith<T, ShortLength<T>> get copyWith =>
      _$ShortLengthCopyWithImpl<T, ShortLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String message) invalidEmail,
    required TResult Function(String failedValue, String message) shortPassword,
    required TResult Function(String failedValue, String message)
        invalidPhoneNo,
    required TResult Function(String failedValue, String message)
        hadNotAlphabet,
    required TResult Function(String failedValue, String message)
        exceedingLength,
    required TResult Function(String failedValue, String message) shortLength,
    required TResult Function(String failedValue, String message) empty,
    required TResult Function(String failedValue, String message)
        missMatchLength,
    required TResult Function(String failedValue, String message) hadNotNumeric,
  }) {
    return shortLength(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
  }) {
    return shortLength?.call(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (shortLength != null) {
      return shortLength(failedValue, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPhoneNo<T> value) invalidPhoneNo,
    required TResult Function(HadNotAlphabet<T> value) hadNotAlphabet,
    required TResult Function(ExeedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MissMatchLength<T> value) missMatchLength,
    required TResult Function(HadNotNumeric<T> value) hadNotNumeric,
  }) {
    return shortLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
  }) {
    return shortLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (shortLength != null) {
      return shortLength(this);
    }
    return orElse();
  }
}

abstract class ShortLength<T> implements ValueFailure<T> {
  const factory ShortLength(
      {required final String failedValue,
      required final String message}) = _$ShortLength<T>;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShortLengthCopyWith<T, ShortLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue, String message});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
  }) {
    return _then(Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue, required this.message});

  @override
  final String failedValue;
  @override
  final String message;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String message) invalidEmail,
    required TResult Function(String failedValue, String message) shortPassword,
    required TResult Function(String failedValue, String message)
        invalidPhoneNo,
    required TResult Function(String failedValue, String message)
        hadNotAlphabet,
    required TResult Function(String failedValue, String message)
        exceedingLength,
    required TResult Function(String failedValue, String message) shortLength,
    required TResult Function(String failedValue, String message) empty,
    required TResult Function(String failedValue, String message)
        missMatchLength,
    required TResult Function(String failedValue, String message) hadNotNumeric,
  }) {
    return empty(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
  }) {
    return empty?.call(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPhoneNo<T> value) invalidPhoneNo,
    required TResult Function(HadNotAlphabet<T> value) hadNotAlphabet,
    required TResult Function(ExeedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MissMatchLength<T> value) missMatchLength,
    required TResult Function(HadNotNumeric<T> value) hadNotNumeric,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty(
      {required final String failedValue,
      required final String message}) = _$Empty<T>;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissMatchLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MissMatchLengthCopyWith(
          MissMatchLength<T> value, $Res Function(MissMatchLength<T>) then) =
      _$MissMatchLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue, String message});
}

/// @nodoc
class _$MissMatchLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MissMatchLengthCopyWith<T, $Res> {
  _$MissMatchLengthCopyWithImpl(
      MissMatchLength<T> _value, $Res Function(MissMatchLength<T>) _then)
      : super(_value, (v) => _then(v as MissMatchLength<T>));

  @override
  MissMatchLength<T> get _value => super._value as MissMatchLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
  }) {
    return _then(MissMatchLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MissMatchLength<T> implements MissMatchLength<T> {
  const _$MissMatchLength({required this.failedValue, required this.message});

  @override
  final String failedValue;
  @override
  final String message;

  @override
  String toString() {
    return 'ValueFailure<$T>.missMatchLength(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MissMatchLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $MissMatchLengthCopyWith<T, MissMatchLength<T>> get copyWith =>
      _$MissMatchLengthCopyWithImpl<T, MissMatchLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String message) invalidEmail,
    required TResult Function(String failedValue, String message) shortPassword,
    required TResult Function(String failedValue, String message)
        invalidPhoneNo,
    required TResult Function(String failedValue, String message)
        hadNotAlphabet,
    required TResult Function(String failedValue, String message)
        exceedingLength,
    required TResult Function(String failedValue, String message) shortLength,
    required TResult Function(String failedValue, String message) empty,
    required TResult Function(String failedValue, String message)
        missMatchLength,
    required TResult Function(String failedValue, String message) hadNotNumeric,
  }) {
    return missMatchLength(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
  }) {
    return missMatchLength?.call(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (missMatchLength != null) {
      return missMatchLength(failedValue, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPhoneNo<T> value) invalidPhoneNo,
    required TResult Function(HadNotAlphabet<T> value) hadNotAlphabet,
    required TResult Function(ExeedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MissMatchLength<T> value) missMatchLength,
    required TResult Function(HadNotNumeric<T> value) hadNotNumeric,
  }) {
    return missMatchLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
  }) {
    return missMatchLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (missMatchLength != null) {
      return missMatchLength(this);
    }
    return orElse();
  }
}

abstract class MissMatchLength<T> implements ValueFailure<T> {
  const factory MissMatchLength(
      {required final String failedValue,
      required final String message}) = _$MissMatchLength<T>;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MissMatchLengthCopyWith<T, MissMatchLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadNotNumericCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $HadNotNumericCopyWith(
          HadNotNumeric<T> value, $Res Function(HadNotNumeric<T>) then) =
      _$HadNotNumericCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue, String message});
}

/// @nodoc
class _$HadNotNumericCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $HadNotNumericCopyWith<T, $Res> {
  _$HadNotNumericCopyWithImpl(
      HadNotNumeric<T> _value, $Res Function(HadNotNumeric<T>) _then)
      : super(_value, (v) => _then(v as HadNotNumeric<T>));

  @override
  HadNotNumeric<T> get _value => super._value as HadNotNumeric<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
  }) {
    return _then(HadNotNumeric<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HadNotNumeric<T> implements HadNotNumeric<T> {
  const _$HadNotNumeric({required this.failedValue, required this.message});

  @override
  final String failedValue;
  @override
  final String message;

  @override
  String toString() {
    return 'ValueFailure<$T>.hadNotNumeric(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HadNotNumeric<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $HadNotNumericCopyWith<T, HadNotNumeric<T>> get copyWith =>
      _$HadNotNumericCopyWithImpl<T, HadNotNumeric<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String message) invalidEmail,
    required TResult Function(String failedValue, String message) shortPassword,
    required TResult Function(String failedValue, String message)
        invalidPhoneNo,
    required TResult Function(String failedValue, String message)
        hadNotAlphabet,
    required TResult Function(String failedValue, String message)
        exceedingLength,
    required TResult Function(String failedValue, String message) shortLength,
    required TResult Function(String failedValue, String message) empty,
    required TResult Function(String failedValue, String message)
        missMatchLength,
    required TResult Function(String failedValue, String message) hadNotNumeric,
  }) {
    return hadNotNumeric(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
  }) {
    return hadNotNumeric?.call(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String message)? invalidEmail,
    TResult Function(String failedValue, String message)? shortPassword,
    TResult Function(String failedValue, String message)? invalidPhoneNo,
    TResult Function(String failedValue, String message)? hadNotAlphabet,
    TResult Function(String failedValue, String message)? exceedingLength,
    TResult Function(String failedValue, String message)? shortLength,
    TResult Function(String failedValue, String message)? empty,
    TResult Function(String failedValue, String message)? missMatchLength,
    TResult Function(String failedValue, String message)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (hadNotNumeric != null) {
      return hadNotNumeric(failedValue, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPhoneNo<T> value) invalidPhoneNo,
    required TResult Function(HadNotAlphabet<T> value) hadNotAlphabet,
    required TResult Function(ExeedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MissMatchLength<T> value) missMatchLength,
    required TResult Function(HadNotNumeric<T> value) hadNotNumeric,
  }) {
    return hadNotNumeric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
  }) {
    return hadNotNumeric?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPhoneNo<T> value)? invalidPhoneNo,
    TResult Function(HadNotAlphabet<T> value)? hadNotAlphabet,
    TResult Function(ExeedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MissMatchLength<T> value)? missMatchLength,
    TResult Function(HadNotNumeric<T> value)? hadNotNumeric,
    required TResult orElse(),
  }) {
    if (hadNotNumeric != null) {
      return hadNotNumeric(this);
    }
    return orElse();
  }
}

abstract class HadNotNumeric<T> implements ValueFailure<T> {
  const factory HadNotNumeric(
      {required final String failedValue,
      required final String message}) = _$HadNotNumeric<T>;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $HadNotNumericCopyWith<T, HadNotNumeric<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
