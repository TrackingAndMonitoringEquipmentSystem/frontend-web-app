// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'department.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Department {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  UserType? get createdBy => throw _privateConstructorUsedError;
  UserType? get updatedBy => throw _privateConstructorUsedError;
  List<Locker>? get lockers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DepartmentCopyWith<Department> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentCopyWith<$Res> {
  factory $DepartmentCopyWith(
          Department value, $Res Function(Department) then) =
      _$DepartmentCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      DateTime createdAt,
      DateTime updatedAt,
      UserType? createdBy,
      UserType? updatedBy,
      List<Locker>? lockers});

  $UserTypeCopyWith<$Res>? get createdBy;
  $UserTypeCopyWith<$Res>? get updatedBy;
}

/// @nodoc
class _$DepartmentCopyWithImpl<$Res> implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._value, this._then);

  final Department _value;
  // ignore: unused_field
  final $Res Function(Department) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? lockers = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserType?,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as UserType?,
      lockers: lockers == freezed
          ? _value.lockers
          : lockers // ignore: cast_nullable_to_non_nullable
              as List<Locker>?,
    ));
  }

  @override
  $UserTypeCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $UserTypeCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value));
    });
  }

  @override
  $UserTypeCopyWith<$Res>? get updatedBy {
    if (_value.updatedBy == null) {
      return null;
    }

    return $UserTypeCopyWith<$Res>(_value.updatedBy!, (value) {
      return _then(_value.copyWith(updatedBy: value));
    });
  }
}

/// @nodoc
abstract class _$DepartmentCopyWith<$Res> implements $DepartmentCopyWith<$Res> {
  factory _$DepartmentCopyWith(
          _Department value, $Res Function(_Department) then) =
      __$DepartmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      DateTime createdAt,
      DateTime updatedAt,
      UserType? createdBy,
      UserType? updatedBy,
      List<Locker>? lockers});

  @override
  $UserTypeCopyWith<$Res>? get createdBy;
  @override
  $UserTypeCopyWith<$Res>? get updatedBy;
}

/// @nodoc
class __$DepartmentCopyWithImpl<$Res> extends _$DepartmentCopyWithImpl<$Res>
    implements _$DepartmentCopyWith<$Res> {
  __$DepartmentCopyWithImpl(
      _Department _value, $Res Function(_Department) _then)
      : super(_value, (v) => _then(v as _Department));

  @override
  _Department get _value => super._value as _Department;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? lockers = freezed,
  }) {
    return _then(_Department(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserType?,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as UserType?,
      lockers: lockers == freezed
          ? _value.lockers
          : lockers // ignore: cast_nullable_to_non_nullable
              as List<Locker>?,
    ));
  }
}

/// @nodoc

class _$_Department implements _Department {
  const _$_Department(
      {required this.id,
      required this.name,
      required this.createdAt,
      required this.updatedAt,
      required this.createdBy,
      required this.updatedBy,
      required final List<Locker>? lockers})
      : _lockers = lockers;

  @override
  final int id;
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final UserType? createdBy;
  @override
  final UserType? updatedBy;
  final List<Locker>? _lockers;
  @override
  List<Locker>? get lockers {
    final value = _lockers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Department(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, lockers: $lockers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Department &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality().equals(other.updatedBy, updatedBy) &&
            const DeepCollectionEquality().equals(other.lockers, lockers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(createdBy),
      const DeepCollectionEquality().hash(updatedBy),
      const DeepCollectionEquality().hash(lockers));

  @JsonKey(ignore: true)
  @override
  _$DepartmentCopyWith<_Department> get copyWith =>
      __$DepartmentCopyWithImpl<_Department>(this, _$identity);
}

abstract class _Department implements Department {
  const factory _Department(
      {required final int id,
      required final String name,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final UserType? createdBy,
      required final UserType? updatedBy,
      required final List<Locker>? lockers}) = _$_Department;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  UserType? get createdBy => throw _privateConstructorUsedError;
  @override
  UserType? get updatedBy => throw _privateConstructorUsedError;
  @override
  List<Locker>? get lockers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DepartmentCopyWith<_Department> get copyWith =>
      throw _privateConstructorUsedError;
}
