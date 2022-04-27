// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rest_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() badRequest,
    required TResult Function() unAuthorized,
    required TResult Function() notFound,
    required TResult Function() unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? badRequest,
    TResult Function()? unAuthorized,
    TResult Function()? notFound,
    TResult Function()? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? badRequest,
    TResult Function()? unAuthorized,
    TResult Function()? notFound,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnKnownError value) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnKnownError value)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnKnownError value)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestFailureCopyWith<$Res> {
  factory $RestFailureCopyWith(
          RestFailure value, $Res Function(RestFailure) then) =
      _$RestFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestFailureCopyWithImpl<$Res> implements $RestFailureCopyWith<$Res> {
  _$RestFailureCopyWithImpl(this._value, this._then);

  final RestFailure _value;
  // ignore: unused_field
  final $Res Function(RestFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$RestFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'RestFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() badRequest,
    required TResult Function() unAuthorized,
    required TResult Function() notFound,
    required TResult Function() unknownError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? badRequest,
    TResult Function()? unAuthorized,
    TResult Function()? notFound,
    TResult Function()? unknownError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? badRequest,
    TResult Function()? unAuthorized,
    TResult Function()? notFound,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnKnownError value) unknownError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnKnownError value)? unknownError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnKnownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements RestFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $BadRequestCopyWith<$Res> {
  factory $BadRequestCopyWith(
          BadRequest value, $Res Function(BadRequest) then) =
      _$BadRequestCopyWithImpl<$Res>;
}

/// @nodoc
class _$BadRequestCopyWithImpl<$Res> extends _$RestFailureCopyWithImpl<$Res>
    implements $BadRequestCopyWith<$Res> {
  _$BadRequestCopyWithImpl(BadRequest _value, $Res Function(BadRequest) _then)
      : super(_value, (v) => _then(v as BadRequest));

  @override
  BadRequest get _value => super._value as BadRequest;
}

/// @nodoc

class _$BadRequest implements BadRequest {
  const _$BadRequest();

  @override
  String toString() {
    return 'RestFailure.badRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BadRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() badRequest,
    required TResult Function() unAuthorized,
    required TResult Function() notFound,
    required TResult Function() unknownError,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? badRequest,
    TResult Function()? unAuthorized,
    TResult Function()? notFound,
    TResult Function()? unknownError,
  }) {
    return badRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? badRequest,
    TResult Function()? unAuthorized,
    TResult Function()? notFound,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnKnownError value) unknownError,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnKnownError value)? unknownError,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnKnownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements RestFailure {
  const factory BadRequest() = _$BadRequest;
}

/// @nodoc
abstract class $UnAuthorizedCopyWith<$Res> {
  factory $UnAuthorizedCopyWith(
          UnAuthorized value, $Res Function(UnAuthorized) then) =
      _$UnAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthorizedCopyWithImpl<$Res> extends _$RestFailureCopyWithImpl<$Res>
    implements $UnAuthorizedCopyWith<$Res> {
  _$UnAuthorizedCopyWithImpl(
      UnAuthorized _value, $Res Function(UnAuthorized) _then)
      : super(_value, (v) => _then(v as UnAuthorized));

  @override
  UnAuthorized get _value => super._value as UnAuthorized;
}

/// @nodoc

class _$UnAuthorized implements UnAuthorized {
  const _$UnAuthorized();

  @override
  String toString() {
    return 'RestFailure.unAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() badRequest,
    required TResult Function() unAuthorized,
    required TResult Function() notFound,
    required TResult Function() unknownError,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? badRequest,
    TResult Function()? unAuthorized,
    TResult Function()? notFound,
    TResult Function()? unknownError,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? badRequest,
    TResult Function()? unAuthorized,
    TResult Function()? notFound,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnKnownError value) unknownError,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnKnownError value)? unknownError,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnKnownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class UnAuthorized implements RestFailure {
  const factory UnAuthorized() = _$UnAuthorized;
}

/// @nodoc
abstract class $NotFoundCopyWith<$Res> {
  factory $NotFoundCopyWith(NotFound value, $Res Function(NotFound) then) =
      _$NotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotFoundCopyWithImpl<$Res> extends _$RestFailureCopyWithImpl<$Res>
    implements $NotFoundCopyWith<$Res> {
  _$NotFoundCopyWithImpl(NotFound _value, $Res Function(NotFound) _then)
      : super(_value, (v) => _then(v as NotFound));

  @override
  NotFound get _value => super._value as NotFound;
}

/// @nodoc

class _$NotFound implements NotFound {
  const _$NotFound();

  @override
  String toString() {
    return 'RestFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() badRequest,
    required TResult Function() unAuthorized,
    required TResult Function() notFound,
    required TResult Function() unknownError,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? badRequest,
    TResult Function()? unAuthorized,
    TResult Function()? notFound,
    TResult Function()? unknownError,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? badRequest,
    TResult Function()? unAuthorized,
    TResult Function()? notFound,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnKnownError value) unknownError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnKnownError value)? unknownError,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnKnownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements RestFailure {
  const factory NotFound() = _$NotFound;
}

/// @nodoc
abstract class $UnKnownErrorCopyWith<$Res> {
  factory $UnKnownErrorCopyWith(
          UnKnownError value, $Res Function(UnKnownError) then) =
      _$UnKnownErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnKnownErrorCopyWithImpl<$Res> extends _$RestFailureCopyWithImpl<$Res>
    implements $UnKnownErrorCopyWith<$Res> {
  _$UnKnownErrorCopyWithImpl(
      UnKnownError _value, $Res Function(UnKnownError) _then)
      : super(_value, (v) => _then(v as UnKnownError));

  @override
  UnKnownError get _value => super._value as UnKnownError;
}

/// @nodoc

class _$UnKnownError implements UnKnownError {
  const _$UnKnownError();

  @override
  String toString() {
    return 'RestFailure.unknownError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnKnownError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() badRequest,
    required TResult Function() unAuthorized,
    required TResult Function() notFound,
    required TResult Function() unknownError,
  }) {
    return unknownError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? badRequest,
    TResult Function()? unAuthorized,
    TResult Function()? notFound,
    TResult Function()? unknownError,
  }) {
    return unknownError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? badRequest,
    TResult Function()? unAuthorized,
    TResult Function()? notFound,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnKnownError value) unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnKnownError value)? unknownError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnKnownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnKnownError implements RestFailure {
  const factory UnKnownError() = _$UnKnownError;
}
