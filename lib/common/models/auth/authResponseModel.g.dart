// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authResponseModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponseModel _$AuthResponseModelFromJson(Map<String, dynamic> json) {
  return AuthResponseModel(
    json['empId'] as int,
    json['empDsc'] as String,
    json['companyId'] as int,
  );
}

Map<String, dynamic> _$AuthResponseModelToJson(AuthResponseModel instance) =>
    <String, dynamic>{
      'empId': instance.empId,
      'empDsc': instance.empDsc,
      'companyId': instance.companyId,
    };
