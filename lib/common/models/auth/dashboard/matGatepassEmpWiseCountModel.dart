
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';

part 'matGatepassEmpWiseCountModel.g.dart';

@JsonSerializable(nullable: false)
class MatGatepassEmpWiseModel{

  static final String tableName = 'maintGatepassEmp';
  static final String columnId = 'id';
  static final String columnEmpPendingCount = 'empPendingCount';
  static final String columnEmpApprovedCount = 'empApprovedCount';
  static final String columnEmpRejectedCount = 'empRejectedCount';
  
  
@JsonSerializable(nullable : false)
final String id;

final int empPendingCount;
// final String empCode;
final int empApprovedCount;
final int empRejectedCount;

//AuthResponseModel(this.empId, this.empDsc,  this.companyId);
MatGatepassEmpWiseModel(this.id, this.empPendingCount, this.empApprovedCount, this.empRejectedCount);

factory MatGatepassEmpWiseModel.fromJson(Map<String, dynamic> json) => _$MatGatepassEmpWiseModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$MatGatepassEmpWiseModelToJson(this);

 static String create(){
    return "CREATE TABLE $tableName (" +
      "$columnId TEXT PRIMARY KEY ," +
      "$columnEmpPendingCount INTEGER," +
      "$columnEmpApprovedCount INTEGER" +
      "$columnEmpRejectedCount INTEGER" +
     
              
    ")";
 }


 

}

