import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/equipment.dart';

part 'locker.freezed.dart';

@freezed
class Locker with _$Locker {
  const factory Locker({
    required int id,
    required String name,
    required String description,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int totalCams,
    required List<Equipment>? equipments,
  }) = _Locker;

  @override
  factory Locker.fromJson(Map<String, dynamic> json) {
    return Locker(
      id: json['locker_id'] as int,
      name: json['locker_name'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      totalCams: json['num_camera'] as int,
      equipments: json.containsKey('equipment')
          ? (json['equipment'] as List)
              .map((e) => Equipment.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
}
