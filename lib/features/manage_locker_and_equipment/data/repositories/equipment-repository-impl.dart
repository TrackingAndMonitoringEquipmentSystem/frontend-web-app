import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:frontend_web_app/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/data/datasources/equipment_rest_api.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/equipment.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/repositories/equipment-repository.dart';

@LazySingleton(as: EquipmentRepository)
class EquipmentRepositoryImpl implements EquipmentRepository {
  final AuthenticationRepository _authenticationRepository;
  final EquipmentRestApi _equipmentRestApi;

  EquipmentRepositoryImpl(
    this._authenticationRepository,
    this._equipmentRestApi,
  );

  @override
  Future<Either<RestFailure, List<Equipment>>> getAll() async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _equipmentRestApi.getAll(token);
    return result.fold((l) => Left(l), (r) {
      final data = r['data'] as List;
      final equipments = data.map<Equipment>((e) {
        print(e);
        return Equipment.fromJson(e as Map<String, dynamic>);
      });
      return Right(equipments.toList());
    });
  }
}
