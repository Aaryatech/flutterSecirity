// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subGatepassCount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubGateppassCount _$SubGateppassCountFromJson(Map<String, dynamic> json) {
  return SubGateppassCount(
    json['id'] as String,
    json['supTempCount'] as int,
    json['supDayCount'] as int,
    json['supOutEmpCount'] as int,
  );
}

Map<String, dynamic> _$SubGateppassCountToJson(SubGateppassCount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supTempCount': instance.supTempCount,
      'supDayCount': instance.supDayCount,
      'supOutEmpCount': instance.supOutEmpCount,
    };
