// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purposeResponseModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PurposeResponseModel _$PurposeResponseModelFromJson(Map<String, dynamic> json) {
  return PurposeResponseModel(
    json['purposeId'] as int,
    json['purposeHeading'] as String,
    json['purposeType'] as int,
    json['description'] as String,
    json['remark'] as String,
    json['empId'] as String,
    json['notificationL4'] as String,
    json['passDuration'] as String,
    json['delStatus'] as int,
    json['isUsed'] as int,
    json['exInt1'] as int,
    json['exInt2'] as int,
    json['exInt3'] as int,
    json['exVar1'] as String,
    json['exVar2'] as String,
    json['exVar3'] as String,
  );
}

Map<String, dynamic> _$PurposeResponseModelToJson(
        PurposeResponseModel instance) =>
    <String, dynamic>{
      'purposeId': instance.purposeId,
      'purposeHeading': instance.purposeHeading,
      'purposeType': instance.purposeType,
      'description': instance.description,
      'remark': instance.remark,
      'empId': instance.empId,
      'notificationL4': instance.notificationL4,
      'passDuration': instance.passDuration,
      'delStatus': instance.delStatus,
      'isUsed': instance.isUsed,
      'exInt1': instance.exInt1,
      'exInt2': instance.exInt2,
      'exInt3': instance.exInt3,
      'exVar1': instance.exVar1,
      'exVar2': instance.exVar2,
      'exVar3': instance.exVar3,
    };
