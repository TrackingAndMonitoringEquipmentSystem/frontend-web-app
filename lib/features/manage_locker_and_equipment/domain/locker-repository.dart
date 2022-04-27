// ignore: file_names
import 'package:dartz/dartz.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/building.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/room.dart';

abstract class LockerRepository {
  Future<Either<RestFailure, List<Locker>>> getAll();

  Future<Either<RestFailure, List<Building>>> getBuildings();

  Future<Either<RestFailure, Locker>> registerLocker({
    required int id,
    required String name,
    required String description,
    required List<Department> departments,
    required Room room,
  });
  Future<Either<RestFailure, dynamic>> addEquipment({
    required int id,
  });

  set currentLocker(Locker? preRegisterUser);
  Future<Either<RestFailure, List<Department>>> getAllByDepartment();

  Locker? get currentLocker;

  Future<Either<RestFailure, Locker>> getLockerByIds(List<int> ids);
}
