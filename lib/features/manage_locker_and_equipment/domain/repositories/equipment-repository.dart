import 'package:dartz/dartz.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/equipment.dart';

abstract class EquipmentRepository {
  Future<Either<RestFailure, List<Equipment>>> getAll();
}
