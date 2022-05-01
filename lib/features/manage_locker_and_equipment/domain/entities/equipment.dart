import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_web_app/features/authentication/domain/entities/user.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'dart:convert' as convert;
part 'equipment.freezed.dart';

@freezed
class Equipment with _$Equipment {
  const factory Equipment({
    required int id,
    required String tagId,
    required String name,
    required String status,
    required String picUrl,
    required int? duration,
    required DateTime createdAt,
    required DateTime updatedAt,
    required Locker locker,
    required UserType? createdBy,
    required UserType? updatedBy,
    required Map<String, dynamic>? type,
    required List? borrowReturns,
    required List? repairs,
    required List? reports,
  }) = _Equipment;

  @override
  factory Equipment.fromJson(Map<String, dynamic> json) {
    print('->equipment json: $json');
    return Equipment(
      id: json['equipment_id'] as int,
      picUrl: json['equip_pic'] as String,
      name: json['name'] as String,
      tagId: json['tag_id'] as String,
      duration: json['duration'] != null ? json['duration'] as int : null,
      type: json['type'] != null ? json['type'] as Map<String, dynamic> : null,
      locker: Locker.fromJson(json['locker'] as Map<String, dynamic>),
      status: json['status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      borrowReturns:
          json['borrowReturns'] != null ? json['borrowReturns'] as List : null,
      createdBy: json['created_by'] != null
          ? UserType.fromJson(json['created_by'] as Map<String, dynamic>)
          : null,
      updatedBy: json['updated_by'] != null
          ? UserType.fromJson(json['updated_by'] as Map<String, dynamic>)
          : null,
      repairs: json['repairs'] != null ? json['repairs'] as List : null,
      reports: json['reports'] != null ? json['reports'] as List : null,
    );
  }
}
