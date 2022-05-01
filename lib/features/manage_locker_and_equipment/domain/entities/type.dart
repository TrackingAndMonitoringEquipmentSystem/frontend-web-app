import 'dart:convert' as convert;

import 'package:freezed_annotation/freezed_annotation.dart';
part 'type.freezed.dart';

@freezed
class Type with _$Type {
  const factory Type({
    required int id,
    required String name,
    required int duration,
  }) = _Type;

  @override
  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(
        id: json['id'] as int,
        name: json['name'] as String,
        duration: json['duration'] as int);
  }
}
