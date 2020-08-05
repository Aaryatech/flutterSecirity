
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';

part 'visAndMaintGatepassCountModel.g.dart';

@JsonSerializable(nullable: false)
class VisAndMaintGatepassModel{

  static final String tableName = 'visAndMaint';
  static final String columnId = 'id';
  static final String columnVisitorPending = 'visitor_pending';
  static final String columnVisitorApproved = 'visitor_approved';
  static final String columnVisitorRejected= 'visitor_rejected';
  static final String columnVisitorCompleted = 'visitor_completed';
  static final String columnVisitorInComp = 'visitor_in_comp';
  static final String columnVisitorTotal = 'visitor_total';
  static final String columnEmpVisitorPending = 'emp_visitor_pending';
  static final String columnEmpVisitorApproved = 'emp_visitor_approved';
  static final String columnEmpVisitorRejected = 'emp_visitor_rejected';
  static final String columnEmpVisitorCompleted = 'emp_visitor_completed';
  static final String columnEmpVisitorTotal = 'emp_visitor_total';
  static final String columnMaintPending = 'maint_pending';
  static final String columnMaintApproved = 'maint_approved';
  static final String columnMaintRejected = 'maint_rejected';
  static final String columnMaintCompleted = 'maint_completed';
  
  
@JsonSerializable(nullable : false)
final String id;

final String visitor_pending;
// final String empCode;
final int visitor_approved;
final int visitor_rejected;
final int visitor_completed;
final int visitor_in_comp;

final int visitor_total;
final int emp_visitor_pending;
final int emp_visitor_approved;
final int emp_visitor_rejected;
final int emp_visitor_completed;

final int emp_visitor_total;
final int maint_pending;

final int maint_approved;
final int maint_rejected;

final int maint_completed;
final int maint_total;

//AuthResponseModel(this.empId, this.empDsc,  this.companyId);
VisAndMaintGatepassModel(this.id, this.visitor_pending, this.visitor_approved, this.visitor_rejected, this.visitor_completed, this.visitor_in_comp, this.visitor_total, this.emp_visitor_pending, this.emp_visitor_approved, this.emp_visitor_rejected, this.emp_visitor_completed, this.emp_visitor_total, this.maint_pending, this.maint_approved, this.maint_rejected, this.maint_completed, this.maint_total);

factory VisAndMaintGatepassModel.fromJson(Map<String, dynamic> json) => _$VisAndMaintGatepassModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$VisAndMaintGatepassModelToJson(this);

 static String create(){
    return "CREATE TABLE $tableName (" +
      "$columnId TEXT PRIMARY KEY ," +
      "$columnVisitorPending INTEGER," +
      "$columnVisitorApproved INTEGER" +
      "$columnVisitorRejected INTEGER," +
      "$columnVisitorCompleted INTEGER," +
      "$columnVisitorInComp INTEGER," +
      "$columnVisitorTotal INTEGER," +
      "$columnEmpVisitorPending INTEGER," +
      "$columnEmpVisitorApproved INTEGER," +
      "$columnEmpVisitorRejected INTEGER," +
      "$columnEmpVisitorCompleted INTEGER," +
      "$columnEmpVisitorTotal INTEGER," +
      "$columnMaintPending INTEGER," +
      "$columnMaintApproved INTEGER," +
      "$columnMaintRejected INTEGER," +
      "$columnMaintCompleted INTEGER" +
      
              
    ")";
 }


 

}

