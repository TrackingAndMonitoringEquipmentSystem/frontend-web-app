// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Locker {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int get totalCams => throw _privateConstructorUsedError;
  List<Equipment>? get equipments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LockerCopyWith<Locker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockerCopyWith<$Res> {
  factory $LockerCopyWith(Locker value, $Res Function(Locker) then) =
      _$LockerCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String description,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      int totalCams,
      List<Equipment>? equipments});
}

/// @nodoc
class _$LockerCopyWithImpl<$Res> implements $LockerCopyWith<$Res> {
  _$LockerCopyWithImpl(this._value, this._then);

  final Locker _value;
  // ignore: unused_field
  final $Res Function(Locker) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? totalCams = freezed,
    Object? equipments = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCams: totalCams == freezed
          ? _value.totalCams
          : totalCams // ignore: cast_nullable_to_non_nullable
              as int,
      equipments: equipments == freezed
          ? _value.equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<Equipment>?,
    ));
  }
}

/// @nodoc
abstract class _$LockerCopyWith<$Res> implements $LockerCopyWith<$Res> {
  factory _$LockerCopyWith(_Locker value, $Res Function(_Locker) then) =
      __$LockerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String description,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      int totalCams,
      List<Equipment>? equipments});
}

/// @nodoc
class __$LockerCopyWithImpl<$Res> extends _$LockerCopyWithImpl<$Res>
    implements _$LockerCopyWith<$Res> {
  __$LockerCopyWithImpl(_Locker _value, $Res Function(_Locker) _then)
      : super(_value, (v) => _then(v as _Locker));

  @override
  _Locker get _value => super._value as _Locker;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? totalCams = freezed,
    Object? equipments = freezed,
  }) {
    return _then(_Locker(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCams: totalCams == freezed
          ? _value.totalCams
          : totalCams // ignore: cast_nullable_to_non_nullable
              as int,
      equipments: equipments == freezed
          ? _value.equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<Equipment>?,
    ));
  }
}

/// @nodoc

class _$_Locker implements _Locker {
  const _$_Locker(
      {required this.id,
      required this.name,
      required this.description,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      required this.totalCams,
      required final List<Equipment>? equipments})
      : _equipments = equipments;

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final int totalCams;
  final List<Equipment>? _equipments;
  @override
  List<Equipment>? get equipments {
    final value = _equipments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Locker(id: $id, name: $name, description: $description, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, totalCams: $totalCams, equipments: $equipments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Locker &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.totalCams, totalCams) &&
            const DeepCollectionEquality()
                .equals(other.equipments, equipments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(totalCams),
      const DeepCollectionEquality().hash(equipments));

  @JsonKey(ignore: true)
  @override
  _$LockerCopyWith<_Locker> get copyWith =>
      __$LockerCopyWithImpl<_Locker>(this, _$identity);
}

abstract class _Locker implements Locker {
  const factory _Locker(
      {required final int id,
      required final String name,
      required final String description,
      required final String status,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final int totalCams,
      required final List<Equipment>? equipments}) = _$_Locker;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  int get totalCams => throw _privateConstructorUsedError;
  @override
  List<Equipment>? get equipments => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LockerCopyWith<_Locker> get copyWith => throw _privateConstructorUsedError;
}
