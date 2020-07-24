// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infoResponseModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoResponseModel _$InfoResponseModelFromJson(Map<String, dynamic> json) {
  return InfoResponseModel(
    json['message'] as String,
    json['error'] as bool,
  );
}

Map<String, dynamic> _$InfoResponseModelToJson(InfoResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
    };
