// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matGatepassCountModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatGatepassCountModel _$MatGatepassCountModelFromJson(
    Map<String, dynamic> json) {
  return MatGatepassCountModel(
    json['id'] as String,
    json['inwardCount'] as int,
    json['parcelCount'] as int,
    json['deptPendingCount'] as int,
    json['deptApprovedCount'] as int,
    json['deptRejectedCount'] as int,
  );
}

Map<String, dynamic> _$MatGatepassCountModelToJson(
        MatGatepassCountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inwardCount': instance.inwardCount,
      'parcelCount': instance.parcelCount,
      'deptPendingCount': instance.deptPendingCount,
      'deptApprovedCount': instance.deptApprovedCount,
      'deptRejectedCount': instance.deptRejectedCount,
    };
