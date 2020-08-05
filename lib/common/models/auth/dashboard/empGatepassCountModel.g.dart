// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empGatepassCountModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmpGateppassCountModel _$EmpGateppassCountModelFromJson(
    Map<String, dynamic> json) {
  return EmpGateppassCountModel(
    json['id'] as String,
    json['tempGpCount'] as int,
    json['dayGpCount'] as int,
    json['outEmpCount'] as int,
  );
}

Map<String, dynamic> _$EmpGateppassCountModelToJson(
        EmpGateppassCountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tempGpCount': instance.tempGpCount,
      'dayGpCount': instance.dayGpCount,
      'outEmpCount': instance.outEmpCount,
    };
