import 'package:dartz/dartz.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/features/authentication/domain/entities/user.dart';
import 'package:frontend_web_app/features/authentication/domain/repositories/authentication_repository.dart';
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
}
