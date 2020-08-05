
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';

part 'subGatepassCount.g.dart';

@JsonSerializable(nullable: false)
class SubGateppassCount{

  static final String tableName = 'subGatepass';
  static final String columnId = 'id';
  static final String columnSupTempCount = 'supTempCount';
  static final String columnSupDayCount = 'supDayCount';
  static final String columnSupOutEmpCount= 'supOutEmpCount';
  
  
@JsonSerializable(nullable : false)
final String id;

final int supTempCount;
// final String empCode;
final int supDayCount;
final int supOutEmpCount;


//AuthResponseModel(this.empId, this.empDsc,  this.companyId);
SubGateppassCount(this.id, this.supTempCount, this.supDayCount, this.supOutEmpCount);

factory SubGateppassCount.fromJson(Map<String, dynamic> json) => _$SubGateppassCountFromJson(json);
  
  Map<String, dynamic> toJson() => _$SubGateppassCountToJson(this);

 static String create(){
    return "CREATE TABLE $tableName (" +
      "$columnId TEXT PRIMARY KEY ," +
      "$columnSupTempCount INTEGER," +
      "$columnSupDayCount INTEGER" +
      "$columnSupOutEmpCount INTEGER" +
      
      
              
    ")";
 }

    //   String toString() {
    //     return "SupGatepassCount{" +
    //             "id='" + id +
    //             ", supTempCount=" + supTempCount  +
    //             ", supDayCount=" + supDayCount +
    //             ", supOutEmpCount=" + supOutEmpCount +
    //             '}';
    // }


 

}

