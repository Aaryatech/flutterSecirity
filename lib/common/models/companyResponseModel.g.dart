// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companyResponseModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyResponseModel _$CompanyResponseModelFromJson(Map<String, dynamic> json) {
  return CompanyResponseModel(
    json['companyId'] as int,
    json['companyName'] as String,
    json['companyLogo'] as String,
    json['companyRemarks'] as String,
    json['delStatus'] as int,
    json['isActive'] as int,
    json['makerUserId'] as int,
    json['makerEnterDatetime'] as String,
    json['exInt1'] as int,
    json['exInt2'] as int,
    json['exInt3'] as int,
    json['exVar1'] as String,
    json['exVar2'] as String,
    json['exVar3'] as String,
  );
}

Map<String, dynamic> _$CompanyResponseModelToJson(
        CompanyResponseModel instance) =>
    <String, dynamic>{
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'companyLogo': instance.companyLogo,
      'companyRemarks': instance.companyRemarks,
      'delStatus': instance.delStatus,
      'isActive': instance.isActive,
      'makerUserId': instance.makerUserId,
      'makerEnterDatetime': instance.makerEnterDatetime,
      'exInt1': instance.exInt1,
      'exInt2': instance.exInt2,
      'exInt3': instance.exInt3,
      'exVar1': instance.exVar1,
      'exVar2': instance.exVar2,
      'exVar3': instance.exVar3,
    };
