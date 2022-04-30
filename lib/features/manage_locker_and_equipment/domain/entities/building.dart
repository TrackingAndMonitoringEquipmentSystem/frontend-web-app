import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/floor.dart';

part 'building.freezed.dart';

@freezed
class Building with _$Building {
  const factory Building({
    required int id,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
    required List<Floor> floors,
  }) = _Building;

  @override
  factory Building.fromJson(Map<String, dynamic> json) {
    return Building(
      id: json['id'] as int,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      floors: (json['floors'] as List)
          .map((e) => Floor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
