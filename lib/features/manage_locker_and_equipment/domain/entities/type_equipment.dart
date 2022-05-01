import 'dart:convert' as convert;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/equipment.dart';
part 'type_equipment.freezed.dart';

@freezed
class TypeEquipment with _$TypeEquipment {
  const factory TypeEquipment({
    required int id,
    required String name,
    required int duration,
  }) = _TypeEquipment;

  @override
  factory TypeEquipment.fromJson(Map<String, dynamic> json) {
    print('->type equipment json: $json');
    return TypeEquipment(
      id: json['id'] as int,
      name: json['name'] as String,
      duration: json['duration'] as int,
    );
  }
}
