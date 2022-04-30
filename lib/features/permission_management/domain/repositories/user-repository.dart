import 'package:dartz/dartz.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/features/authentication/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<RestFailure, List<UserType>>> getAll();
}
