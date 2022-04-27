import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/room.dart';

part 'floor.freezed.dart';

@freezed
class Floor with _$Floor {
  const factory Floor({
    required int id,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
    required List<Room> rooms,
  }) = _Floor;

  @override
  factory Floor.fromJson(Map<String, dynamic> json) {
    return Floor(
      id: json['id'] as int,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      rooms: (json['rooms'] as List)
          .map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
