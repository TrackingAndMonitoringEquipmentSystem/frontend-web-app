// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'equipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Equipment {
  int get id => throw _privateConstructorUsedError;
  String get tagId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get picUrl => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Locker get locker => throw _privateConstructorUsedError;
  UserType? get createdBy => throw _privateConstructorUsedError;
  UserType? get updatedBy => throw _privateConstructorUsedError;
  Map<String, dynamic>? get type => throw _privateConstructorUsedError;
  List<dynamic>? get borrowReturns => throw _privateConstructorUsedError;
  List<dynamic>? get repairs => throw _privateConstructorUsedError;
  List<dynamic>? get reports => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EquipmentCopyWith<Equipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentCopyWith<$Res> {
  factory $EquipmentCopyWith(Equipment value, $Res Function(Equipment) then) =
      _$EquipmentCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String tagId,
      String name,
      String status,
      String picUrl,
      int? duration,
      DateTime createdAt,
      DateTime updatedAt,
      Locker locker,
      UserType? createdBy,
      UserType? updatedBy,
      Map<String, dynamic>? type,
      List<dynamic>? borrowReturns,
      List<dynamic>? repairs,
      List<dynamic>? reports});

  $LockerCopyWith<$Res> get locker;
  $UserTypeCopyWith<$Res>? get createdBy;
  $UserTypeCopyWith<$Res>? get updatedBy;
}

/// @nodoc
class _$EquipmentCopyWithImpl<$Res> implements $EquipmentCopyWith<$Res> {
  _$EquipmentCopyWithImpl(this._value, this._then);

  final Equipment _value;
  // ignore: unused_field
  final $Res Function(Equipment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? tagId = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? picUrl = freezed,
    Object? duration = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? locker = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? type = freezed,
    Object? borrowReturns = freezed,
    Object? repairs = freezed,
    Object? reports = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tagId: tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      picUrl: picUrl == freezed
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      locker: locker == freezed
          ? _value.locker
          : locker // ignore: cast_nullable_to_non_nullable
              as Locker,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserType?,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as UserType?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      borrowReturns: borrowReturns == freezed
          ? _value.borrowReturns
          : borrowReturns // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      repairs: repairs == freezed
          ? _value.repairs
          : repairs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      reports: reports == freezed
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }

  @override
  $LockerCopyWith<$Res> get locker {
    return $LockerCopyWith<$Res>(_value.locker, (value) {
      return _then(_value.copyWith(locker: value));
    });
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
abstract class _$EquipmentCopyWith<$Res> implements $EquipmentCopyWith<$Res> {
  factory _$EquipmentCopyWith(
          _Equipment value, $Res Function(_Equipment) then) =
      __$EquipmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String tagId,
      String name,
      String status,
      String picUrl,
      int? duration,
      DateTime createdAt,
      DateTime updatedAt,
      Locker locker,
      UserType? createdBy,
      UserType? updatedBy,
      Map<String, dynamic>? type,
      List<dynamic>? borrowReturns,
      List<dynamic>? repairs,
      List<dynamic>? reports});

  @override
  $LockerCopyWith<$Res> get locker;
  @override
  $UserTypeCopyWith<$Res>? get createdBy;
  @override
  $UserTypeCopyWith<$Res>? get updatedBy;
}

/// @nodoc
class __$EquipmentCopyWithImpl<$Res> extends _$EquipmentCopyWithImpl<$Res>
    implements _$EquipmentCopyWith<$Res> {
  __$EquipmentCopyWithImpl(_Equipment _value, $Res Function(_Equipment) _then)
      : super(_value, (v) => _then(v as _Equipment));

  @override
  _Equipment get _value => super._value as _Equipment;

  @override
  $Res call({
    Object? id = freezed,
    Object? tagId = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? picUrl = freezed,
    Object? duration = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? locker = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? type = freezed,
    Object? borrowReturns = freezed,
    Object? repairs = freezed,
    Object? reports = freezed,
  }) {
    return _then(_Equipment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tagId: tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      picUrl: picUrl == freezed
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      locker: locker == freezed
          ? _value.locker
          : locker // ignore: cast_nullable_to_non_nullable
              as Locker,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserType?,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as UserType?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      borrowReturns: borrowReturns == freezed
          ? _value.borrowReturns
          : borrowReturns // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      repairs: repairs == freezed
          ? _value.repairs
          : repairs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      reports: reports == freezed
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_Equipment implements _Equipment {
  const _$_Equipment(
      {required this.id,
      required this.tagId,
      required this.name,
      required this.status,
      required this.picUrl,
      required this.duration,
      required this.createdAt,
      required this.updatedAt,
      required this.locker,
      required this.createdBy,
      required this.updatedBy,
      required final Map<String, dynamic>? type,
      required final List<dynamic>? borrowReturns,
      required final List<dynamic>? repairs,
      required final List<dynamic>? reports})
      : _type = type,
        _borrowReturns = borrowReturns,
        _repairs = repairs,
        _reports = reports;

  @override
  final int id;
  @override
  final String tagId;
  @override
  final String name;
  @override
  final String status;
  @override
  final String picUrl;
  @override
  final int? duration;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final Locker locker;
  @override
  final UserType? createdBy;
  @override
  final UserType? updatedBy;
  final Map<String, dynamic>? _type;
  @override
  Map<String, dynamic>? get type {
    final value = _type;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<dynamic>? _borrowReturns;
  @override
  List<dynamic>? get borrowReturns {
    final value = _borrowReturns;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _repairs;
  @override
  List<dynamic>? get repairs {
    final value = _repairs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _reports;
  @override
  List<dynamic>? get reports {
    final value = _reports;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Equipment(id: $id, tagId: $tagId, name: $name, status: $status, picUrl: $picUrl, duration: $duration, createdAt: $createdAt, updatedAt: $updatedAt, locker: $locker, createdBy: $createdBy, updatedBy: $updatedBy, type: $type, borrowReturns: $borrowReturns, repairs: $repairs, reports: $reports)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Equipment &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.tagId, tagId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.picUrl, picUrl) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.locker, locker) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality().equals(other.updatedBy, updatedBy) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.borrowReturns, borrowReturns) &&
            const DeepCollectionEquality().equals(other.repairs, repairs) &&
            const DeepCollectionEquality().equals(other.reports, reports));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(tagId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(picUrl),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(locker),
      const DeepCollectionEquality().hash(createdBy),
      const DeepCollectionEquality().hash(updatedBy),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(borrowReturns),
      const DeepCollectionEquality().hash(repairs),
      const DeepCollectionEquality().hash(reports));

  @JsonKey(ignore: true)
  @override
  _$EquipmentCopyWith<_Equipment> get copyWith =>
      __$EquipmentCopyWithImpl<_Equipment>(this, _$identity);
}

abstract class _Equipment implements Equipment {
  const factory _Equipment(
      {required final int id,
      required final String tagId,
      required final String name,
      required final String status,
      required final String picUrl,
      required final int? duration,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final Locker locker,
      required final UserType? createdBy,
      required final UserType? updatedBy,
      required final Map<String, dynamic>? type,
      required final List<dynamic>? borrowReturns,
      required final List<dynamic>? repairs,
      required final List<dynamic>? reports}) = _$_Equipment;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get tagId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get picUrl => throw _privateConstructorUsedError;
  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  Locker get locker => throw _privateConstructorUsedError;
  @override
  UserType? get createdBy => throw _privateConstructorUsedError;
  @override
  UserType? get updatedBy => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get type => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get borrowReturns => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get repairs => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get reports => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EquipmentCopyWith<_Equipment> get copyWith =>
      throw _privateConstructorUsedError;
}
