import 'package:dartz/dartz.dart';
import 'package:frontend_web_app/core/data/data_sources/rest_api.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/core/domain/repositories/public_repository.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PublicRepository)
class PublicRepositoryImpl implements PublicRepository {
  final RestApi _restApi;

  PublicRepositoryImpl(this._restApi);
  @override
  Future<Either<RestFailure, List<Department>>> getDepartments() async {
    final departments = <Department>[];
    RestFailure? publicFailure;
    final response = await _restApi.getDepartments();
    response.fold((l) => publicFailure = l, (r) {
      final departmentsJson = r['data'];
      for (final Map<String, dynamic> data in departmentsJson) {
        departments.add(Department.fromJson(data));
      }
    });
    if (response.isRight()) {
      return Right(departments);
    } else {
      return Left(publicFailure!);
    }
  }
}
