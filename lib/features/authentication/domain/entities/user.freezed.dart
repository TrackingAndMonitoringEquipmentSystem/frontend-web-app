// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserType {
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get tel => throw _privateConstructorUsedError;
  String? get providerId => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  String? get faceIdUrl => throw _privateConstructorUsedError;
  String? get profilePicUrl => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Department? get department => throw _privateConstructorUsedError;
  Role? get role => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserTypeCopyWith<UserType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTypeCopyWith<$Res> {
  factory $UserTypeCopyWith(UserType value, $Res Function(UserType) then) =
      _$UserTypeCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String email,
      String? tel,
      String? providerId,
      Gender? gender,
      String? faceIdUrl,
      String? profilePicUrl,
      DateTime createdAt,
      DateTime updatedAt,
      Department? department,
      Role? role});

  $DepartmentCopyWith<$Res> get department;
}

/// @nodoc
class _$UserTypeCopyWithImpl<$Res> implements $UserTypeCopyWith<$Res> {
  _$UserTypeCopyWithImpl(this._value, this._then);

  final UserType _value;
  // ignore: unused_field
  final $Res Function(UserType) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? tel = freezed,
    Object? providerId = freezed,
    Object? gender = freezed,
    Object? faceIdUrl = freezed,
    Object? profilePicUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? department = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      tel: tel == freezed
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: providerId == freezed
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      faceIdUrl: faceIdUrl == freezed
          ? _value.faceIdUrl
          : faceIdUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicUrl: profilePicUrl == freezed
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }

  @override
  $DepartmentCopyWith<$Res> get department {
    return $DepartmentCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserTypeCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String email,
      String? tel,
      String? providerId,
      Gender? gender,
      String? faceIdUrl,
      String? profilePicUrl,
      DateTime createdAt,
      DateTime updatedAt,
      Department? department,
      Role? role});

  @override
  $DepartmentCopyWith<$Res> get department;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserTypeCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? tel = freezed,
    Object? providerId = freezed,
    Object? gender = freezed,
    Object? faceIdUrl = freezed,
    Object? profilePicUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? department = freezed,
    Object? role = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      tel: tel == freezed
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: providerId == freezed
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      faceIdUrl: faceIdUrl == freezed
          ? _value.faceIdUrl
          : faceIdUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicUrl: profilePicUrl == freezed
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.tel,
      required this.providerId,
      required this.gender,
      required this.faceIdUrl,
      required this.profilePicUrl,
      required this.createdAt,
      required this.updatedAt,
      required this.department,
      required this.role});

  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String? tel;
  @override
  final String? providerId;
  @override
  final Gender? gender;
  @override
  final String? faceIdUrl;
  @override
  final String? profilePicUrl;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final Department? department;
  @override
  final Role? role;

  @override
  String toString() {
    return 'UserType(id: $id, firstName: $firstName, lastName: $lastName, email: $email, tel: $tel, providerId: $providerId, gender: $gender, faceIdUrl: $faceIdUrl, profilePicUrl: $profilePicUrl, createdAt: $createdAt, updatedAt: $updatedAt, department: $department, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.tel, tel) &&
            const DeepCollectionEquality()
                .equals(other.providerId, providerId) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.faceIdUrl, faceIdUrl) &&
            const DeepCollectionEquality()
                .equals(other.profilePicUrl, profilePicUrl) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.department, department) &&
            const DeepCollectionEquality().equals(other.role, role));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(tel),
      const DeepCollectionEquality().hash(providerId),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(faceIdUrl),
      const DeepCollectionEquality().hash(profilePicUrl),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(department),
      const DeepCollectionEquality().hash(role));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements UserType {
  const factory _User(
      {required final int id,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final String? tel,
      required final String? providerId,
      required final Gender? gender,
      required final String? faceIdUrl,
      required final String? profilePicUrl,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final Department? department,
      required final Role? role}) = _$_User;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String? get tel => throw _privateConstructorUsedError;
  @override
  String? get providerId => throw _privateConstructorUsedError;
  @override
  Gender? get gender => throw _privateConstructorUsedError;
  @override
  String? get faceIdUrl => throw _privateConstructorUsedError;
  @override
  String? get profilePicUrl => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  Department get department => throw _privateConstructorUsedError;
  @override
  Role? get role => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
