import 'package:dartz/dartz.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/data/datasources/location_rest_api.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/data/datasources/locker_rest_api.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/building.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/room.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/repositories/locker-repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LockerRepository)
class LockerRepositoryImpl implements LockerRepository {
  final AuthenticationRepository _authenticationRepository;
  final LockerRestApi _lockerRestApi;
  final LocationRestApi _locationRestApi;
  LockerRepositoryImpl(
    this._authenticationRepository,
    this._lockerRestApi,
    this._locationRestApi,
  );

  @override
  Future<Either<RestFailure, List<Locker>>> getAll() async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _lockerRestApi.getAll(token);
    return result.fold((l) => Left(l), (r) {
      final data = r['data'] as List;
      final lockers = data.map<Locker>((e) {
        return Locker.fromJson(e as Map<String, dynamic>);
      });
      return Right(lockers.toList());
    });
  }

  @override
  Future<Either<RestFailure, List<Building>>> getBuildings() async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _locationRestApi.getBuildings(token);
    return result.fold((l) => Left(l), (r) {
      final data = r['data'] as List;
      final buildings = data.map<Building>((e) {
        return Building.fromJson(e as Map<String, dynamic>);
      });
      return Right(buildings.toList());
    });
  }

  @override
  Future<Either<RestFailure, Locker>> registerLocker({
    required int id,
    required String name,
    required String description,
    required Department departments,
    required Room room,
  }) async {
    print(room);
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _lockerRestApi.registerLocker(
      token: token,
      id: id,
      name: name,
      description: description,
      departmentIds: departments.id,
      roomId: room.id,
    );
    print(result);
    return result.fold((l) => Left(l), (r) {
      final locker = Locker.fromJson(r['data'] as Map<String, dynamic>);

      return Right(locker);
    });
  }

  @override
  Future<Either<RestFailure, dynamic>> addEquipment({required int id}) async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result =
        await _lockerRestApi.addEquipment(token: token, lockerId: id);
    return result.fold((l) => Left(l), (r) {
      return Right(r['data']);
    });
  }

  @override
  Locker? currentLocker;

  @override
  Future<Either<RestFailure, List<Department>>> getAllByDepartment() async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _lockerRestApi.getAllByDepartment(token: token);
    return result.fold((l) => Left(l), (r) {
      return Right(
        (r['data'] as List)
            .map((e) => Department.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    });
  }

  @override
  Future<Either<RestFailure, Locker>> getLockerById() {
    throw UnimplementedError();
  }

  @override
  Future<Either<RestFailure, Locker>> getLockerByIds(List<int> ids) {
    // TODO: implement getLockerByIds
    throw UnimplementedError();
  }

  @override
  Future<Either<RestFailure, List<int>>> getUnregister() async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _lockerRestApi.getUnregister(token: token);
    return result.fold((l) => Left(l), (r) {
      return Right(
        (r['data'] as List)
            .map((e) => (e as Map<String, dynamic>)['locker_id'] as int)
            .toList(),
      );
    });
  }

  @override
  Future<Either<RestFailure, List<Type>>> getType() {
    // TODO: implement getType
    throw UnimplementedError();
  }
}
