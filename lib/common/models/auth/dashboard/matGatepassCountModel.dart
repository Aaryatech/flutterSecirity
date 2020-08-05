
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';

part 'matGatepassCountModel.g.dart';

@JsonSerializable(nullable: false)
 class MatGatepassCountModel{

  static final String tableName = 'matGatepass';
  static final String columnId = 'id';
  static final String columnInwardCount = 'inwardCount';
  static final String columnParcelCount = 'parcelCount';
  static final String columnDeptPendingCount= 'deptPendingCount';
  static final String columnDeptApprovedCount= 'deptApprovedCount';
  static final String columnDeptRejectedCount= 'deptRejectedCount';
  
  
@JsonSerializable(nullable : false)
final String id;

final int inwardCount;
// final String empCode;
final int parcelCount;
final int deptPendingCount;
final int deptApprovedCount;
final int deptRejectedCount;


//AuthResponseModel(this.empId, this.empDsc,  this.companyId);
MatGatepassCountModel(this.id, this.inwardCount, this.parcelCount, this.deptPendingCount, this.deptApprovedCount, this.deptRejectedCount);

factory MatGatepassCountModel.fromJson(Map<String, dynamic> json) => _$MatGatepassCountModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$MatGatepassCountModelToJson(this);

 static String create(){
    return "CREATE TABLE $tableName (" +
      "$columnId TEXT PRIMARY KEY ," +
      "$columnInwardCount INTEGER," +
      "$columnParcelCount INTEGER," +
      "$columnDeptPendingCount INTEGER," +
      "$columnDeptApprovedCount INTEGER," +
      "$columnDeptRejectedCount INTEGER" +
      
      
              
    ")";
 }


 

}

