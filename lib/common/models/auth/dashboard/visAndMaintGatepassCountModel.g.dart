// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visAndMaintGatepassCountModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VisAndMaintGatepassModel _$VisAndMaintGatepassModelFromJson(
    Map<String, dynamic> json) {
  return VisAndMaintGatepassModel(
    json['id'] as String,
    json['visitor_pending'] as String,
    json['visitor_approved'] as int,
    json['visitor_rejected'] as int,
    json['visitor_completed'] as int,
    json['visitor_in_comp'] as int,
    json['visitor_total'] as int,
    json['emp_visitor_pending'] as int,
    json['emp_visitor_approved'] as int,
    json['emp_visitor_rejected'] as int,
    json['emp_visitor_completed'] as int,
    json['emp_visitor_total'] as int,
    json['maint_pending'] as int,
    json['maint_approved'] as int,
    json['maint_rejected'] as int,
    json['maint_completed'] as int,
    json['maint_total'] as int,
  );
}

Map<String, dynamic> _$VisAndMaintGatepassModelToJson(
        VisAndMaintGatepassModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'visitor_pending': instance.visitor_pending,
      'visitor_approved': instance.visitor_approved,
      'visitor_rejected': instance.visitor_rejected,
      'visitor_completed': instance.visitor_completed,
      'visitor_in_comp': instance.visitor_in_comp,
      'visitor_total': instance.visitor_total,
      'emp_visitor_pending': instance.emp_visitor_pending,
      'emp_visitor_approved': instance.emp_visitor_approved,
      'emp_visitor_rejected': instance.emp_visitor_rejected,
      'emp_visitor_completed': instance.emp_visitor_completed,
      'emp_visitor_total': instance.emp_visitor_total,
      'maint_pending': instance.maint_pending,
      'maint_approved': instance.maint_approved,
      'maint_rejected': instance.maint_rejected,
      'maint_completed': instance.maint_completed,
      'maint_total': instance.maint_total,
    };