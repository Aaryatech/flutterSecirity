
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';

part 'empGatepassCountModel.g.dart';

@JsonSerializable(nullable: false)
class EmpGateppassCountModel{

  static final String tableName = 'empGatepass';
  static final String columnId = 'id';
  static final String columnTempGpCount = 'tempGpCount';
  static final String columnDayGpCount = 'dayGpCount';
  static final String columnOutEmpCount= 'outEmpCount';
  
  
@JsonSerializable(nullable : false)
final String id;

final int tempGpCount;
// final String empCode;
final int dayGpCount;
final int outEmpCount;


//AuthResponseModel(this.empId, this.empDsc,  this.companyId);
EmpGateppassCountModel(this.id, this.tempGpCount, this.dayGpCount, this.outEmpCount);

factory EmpGateppassCountModel.fromJson(Map<String, dynamic> json) => _$EmpGateppassCountModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$EmpGateppassCountModelToJson(this);

 static String create(){
    return "CREATE TABLE $tableName (" +
      "$columnId TEXT PRIMARY KEY ," +
      "$columnTempGpCount INTEGER," +
      "$columnDayGpCount INTEGER" +
      "$columnOutEmpCount INTEGER" +
      
      
              
    ")";
 }


 

}

