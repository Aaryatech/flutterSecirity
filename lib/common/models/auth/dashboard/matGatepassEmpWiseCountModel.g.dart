// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matGatepassEmpWiseCountModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatGatepassEmpWiseModel _$MatGatepassEmpWiseModelFromJson(
    Map<String, dynamic> json) {
  return MatGatepassEmpWiseModel(
    json['id'] as String,
    json['empPendingCount'] as String,
    json['empApprovedCount'] as int,
    json['empRejectedCount'] as int,
  );
}

Map<String, dynamic> _$MatGatepassEmpWiseModelToJson(
        MatGatepassEmpWiseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'empPendingCount': instance.empPendingCount,
      'empApprovedCount': instance.empApprovedCount,
      'empRejectedCount': instance.empRejectedCount,
    };
