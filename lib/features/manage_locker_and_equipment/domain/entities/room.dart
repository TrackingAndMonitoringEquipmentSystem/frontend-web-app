import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/locker.dart';

part 'room.freezed.dart';

@freezed
class Room with _$Room {
  const factory Room({
    required int id,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
    required List<Locker>? lockers,
  }) = _Room;

  @override
  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      id: json['id'] as int,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      lockers: json.containsKey('lockers')
          ? (json['lockers'] as List)
              .map((e) => Locker.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
}
