import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_web_app/core/utils/enum.dart';
import 'package:frontend_web_app/features/authentication/domain/value_objects/value_objects.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/department.dart';

part 'pre_register_user.freezed.dart';

@freezed
class PreRegisterUser with _$PreRegisterUser {
  const factory PreRegisterUser({
    required FirstName? firstName,
    required LastName? lastName,
    required Gender? gender,
    required TelNo? telNo,
    required EmailAddress? email,
    required Password? password,
    required Role? role,
    required String? pin,
    required Department? department,
  }) = _PreRegisterUser;
}
