import 'package:dartz/dartz.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/data/datasources/department_rest_api.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/repositories/department-repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DepartmentRepository)
class DepartmentRepositoryImpl implements DepartmentRepository {
  final AuthenticationRepository _authenticationRepository;
  final DepartmentRestApi _departmentRestApi;

  DepartmentRepositoryImpl(
    this._authenticationRepository,
    this._departmentRestApi,
  );

  @override
  Future<Either<RestFailure, List<Department>>> getAll() async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _departmentRestApi.getAll(token);
    return result.fold((l) => Left(l), (r) {
      final data = r['data'] as List;
      final departments = data.map<Department>((e) {
        return Department.fromJson(e as Map<String, dynamic>);
      });
      return Right(departments.toList());
    });
  }
}
