import 'package:dartz/dartz.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/features/authentication/domain/entities/user.dart';
import 'package:frontend_web_app/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:frontend_web_app/features/permission_management/data/dataoures/user_rest_api.dart';
import 'package:frontend_web_app/features/permission_management/domain/repositories/user-repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final AuthenticationRepository _authenticationRepository;
  final UserRestApi _userRestApi;

  UserRepositoryImpl(
    this._authenticationRepository,
    this._userRestApi,
  );

  @override
  Future<Either<RestFailure, List<UserType>>> getAll() async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _userRestApi.getAll(token);
    return result.fold((l) => Left(l), (r) {
      final data = r['data'] as List;
      final users = data.map<UserType>((e) {
        return UserType.fromJson(e as Map<String, dynamic>);
      });
      return Right(users.toList());
    });
  }

  @override
  Future<Either<RestFailure, List<UserType>>> getBlockUser() async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _userRestApi.getBlockUser(token);
    return result.fold((l) => Left(l), (r) {
      final data = r['data'] as List;
      final blockedUsers = data.map<UserType>((e) {
        return UserType.fromJson(e as Map<String, dynamic>);
      });
      return Right(blockedUsers.toList());
    });
  }

  @override
  Future<Either<RestFailure, List<UserType>>> getWaitingUser() async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _userRestApi.getWaitingUser(token);
    return result.fold((l) => Left(l), (r) {
      final data = r['data'] as List;
      final waitingUsers = data.map<UserType>((e) {
        return UserType.fromJson(e as Map<String, dynamic>);
      });
      return Right(waitingUsers.toList());
    });
  }

  @override
  Future<Either<RestFailure, UserType>> addUser({
    required String email,
    required int roleId,
    required Department department,
    String? firstName,
    String? lastName,
    String? tel,
  }) async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _userRestApi.addUser(
        token: token,
        email: email,
        roleId: roleId,
        departmentId: department.id,
        firstName: firstName,
        lastName: lastName,
        tel: tel);
    return result.fold((l) => Left(l), (r) {
      final user = UserType.fromJson(r['data'] as Map<String, dynamic>);

      return Right(user);
    });
  }
}
