import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_web_app/features/authentication/domain/entities/user.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/locker.dart';
part 'equipment.freezed.dart';

@freezed
class Equipment with _$Equipment {
  const factory Equipment({
    required int id,
    required String tagId,
    required String name,
    required String status,
    required String picUrl,
    required int duration,
    required DateTime createdAt,
    required DateTime updatedAt,
    required Locker? locker,
    required UserType createdBy,
    required UserType updatedBy,
    required Map<String, dynamic>? type,
    required List? borrowReturns,
    required List? repairs,
    required List? reports,
  }) = _Equipment;

  @override
  factory Equipment.fromJson(Map<String, dynamic> json) {
    return Equipment(
      id: json['id'] as int,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      borrowReturns: json.containsKey('borrowReturns')
          ? json['borrowReturns'] as List
          : null,
      createdBy: UserType.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: UserType.fromJson(json['updated_by'] as Map<String, dynamic>),
      duration: json['duration'] as int,
      locker: json.containsKey('locker')
          ? Locker.fromJson(json['locker'] as Map<String, dynamic>)
          : null,
      picUrl: json['equip_pic'] as String,
      repairs: json.containsKey('repairs') ? json['repairs'] as List : null,
      reports: json.containsKey('reports') ? json['reports'] as List : null,
      status: json['status'] as String,
      tagId: json['tag_id'] as String,
      type:
          json.containsKey('type') ? json['type'] as Map<String, dynamic> : {},
    );
  }
}
