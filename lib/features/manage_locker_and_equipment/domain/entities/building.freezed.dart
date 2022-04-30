// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'building.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Building {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<Floor> get floors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuildingCopyWith<Building> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingCopyWith<$Res> {
  factory $BuildingCopyWith(Building value, $Res Function(Building) then) =
      _$BuildingCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      DateTime createdAt,
      DateTime updatedAt,
      List<Floor> floors});
}

/// @nodoc
class _$BuildingCopyWithImpl<$Res> implements $BuildingCopyWith<$Res> {
  _$BuildingCopyWithImpl(this._value, this._then);

  final Building _value;
  // ignore: unused_field
  final $Res Function(Building) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? floors = freezed,
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
      floors: floors == freezed
          ? _value.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as List<Floor>,
    ));
  }
}

/// @nodoc
abstract class _$BuildingCopyWith<$Res> implements $BuildingCopyWith<$Res> {
  factory _$BuildingCopyWith(_Building value, $Res Function(_Building) then) =
      __$BuildingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      DateTime createdAt,
      DateTime updatedAt,
      List<Floor> floors});
}

/// @nodoc
class __$BuildingCopyWithImpl<$Res> extends _$BuildingCopyWithImpl<$Res>
    implements _$BuildingCopyWith<$Res> {
  __$BuildingCopyWithImpl(_Building _value, $Res Function(_Building) _then)
      : super(_value, (v) => _then(v as _Building));

  @override
  _Building get _value => super._value as _Building;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? floors = freezed,
  }) {
    return _then(_Building(
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
      floors: floors == freezed
          ? _value.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as List<Floor>,
    ));
  }
}

/// @nodoc

class _$_Building implements _Building {
  const _$_Building(
      {required this.id,
      required this.name,
      required this.createdAt,
      required this.updatedAt,
      required final List<Floor> floors})
      : _floors = floors;

  @override
  final int id;
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final List<Floor> _floors;
  @override
  List<Floor> get floors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_floors);
  }

  @override
  String toString() {
    return 'Building(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, floors: $floors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Building &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.floors, floors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(floors));

  @JsonKey(ignore: true)
  @override
  _$BuildingCopyWith<_Building> get copyWith =>
      __$BuildingCopyWithImpl<_Building>(this, _$identity);
}

abstract class _Building implements Building {
  const factory _Building(
      {required final int id,
      required final String name,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final List<Floor> floors}) = _$_Building;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  List<Floor> get floors => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BuildingCopyWith<_Building> get copyWith =>
      throw _privateConstructorUsedError;
}
