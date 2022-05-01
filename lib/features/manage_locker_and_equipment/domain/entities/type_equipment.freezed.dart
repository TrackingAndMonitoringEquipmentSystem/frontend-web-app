// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'type_equipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TypeEquipment {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TypeEquipmentCopyWith<TypeEquipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeEquipmentCopyWith<$Res> {
  factory $TypeEquipmentCopyWith(
          TypeEquipment value, $Res Function(TypeEquipment) then) =
      _$TypeEquipmentCopyWithImpl<$Res>;
  $Res call({int id, String name, int duration});
}

/// @nodoc
class _$TypeEquipmentCopyWithImpl<$Res>
    implements $TypeEquipmentCopyWith<$Res> {
  _$TypeEquipmentCopyWithImpl(this._value, this._then);

  final TypeEquipment _value;
  // ignore: unused_field
  final $Res Function(TypeEquipment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? duration = freezed,
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
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TypeEquipmentCopyWith<$Res>
    implements $TypeEquipmentCopyWith<$Res> {
  factory _$TypeEquipmentCopyWith(
          _TypeEquipment value, $Res Function(_TypeEquipment) then) =
      __$TypeEquipmentCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, int duration});
}

/// @nodoc
class __$TypeEquipmentCopyWithImpl<$Res>
    extends _$TypeEquipmentCopyWithImpl<$Res>
    implements _$TypeEquipmentCopyWith<$Res> {
  __$TypeEquipmentCopyWithImpl(
      _TypeEquipment _value, $Res Function(_TypeEquipment) _then)
      : super(_value, (v) => _then(v as _TypeEquipment));

  @override
  _TypeEquipment get _value => super._value as _TypeEquipment;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? duration = freezed,
  }) {
    return _then(_TypeEquipment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TypeEquipment implements _TypeEquipment {
  const _$_TypeEquipment(
      {required this.id, required this.name, required this.duration});

  @override
  final int id;
  @override
  final String name;
  @override
  final int duration;

  @override
  String toString() {
    return 'TypeEquipment(id: $id, name: $name, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TypeEquipment &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$TypeEquipmentCopyWith<_TypeEquipment> get copyWith =>
      __$TypeEquipmentCopyWithImpl<_TypeEquipment>(this, _$identity);
}

abstract class _TypeEquipment implements TypeEquipment {
  const factory _TypeEquipment(
      {required final int id,
      required final String name,
      required final int duration}) = _$_TypeEquipment;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TypeEquipmentCopyWith<_TypeEquipment> get copyWith =>
      throw _privateConstructorUsedError;
}
