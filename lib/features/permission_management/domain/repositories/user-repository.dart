import 'package:dartz/dartz.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/features/authentication/domain/entities/user.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/department.dart';

abstract class UserRepository {
  Future<Either<RestFailure, List<UserType>>> getAll();

  Future<Either<RestFailure, List<UserType>>> getBlockUser();

  Future<Either<RestFailure, List<UserType>>> getWaitingUser();

  Future<Either<RestFailure, UserType>> addUser({
    required String email,
    required int roleId,
    required Department department,
    String? firstName,
    String? lastName,
    String? tel,
  });
}
