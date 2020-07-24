
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'purposeResponseModel.g.dart';

@JsonSerializable(nullable: false)
class PurposeResponseModel{

  static final String tableName = 'purpose';
  static final String columnPurposeId= 'purposeId';
  static final String columnPurposeHeading = 'purposeHeading';
 static final String columnPurposeType = 'purposeType';
 static final String columnDescription = 'description';
 static final String columnRemark = 'remark';
 static final String columnEmpId = 'empId';
 static final String columnNotificationL4 = 'notificationL4';
 static final String columnPassDuration = 'passDuration';
 static final String columnDelStatus = 'delStatus';
 static final String columnIsUsed = 'isUsed';
 static final String columnExInt1 = 'exInt1';
 static final String columnExInt2 = 'exInt2';
 static final String columnExInt3 = 'exInt3';
 static final String columnExVar1 = 'exVar1';
 static final String columnExVar2 = 'exVar2';
 static final String columnExVar3 = 'exVar3';

 
@JsonSerializable(nullable : false)
final int purposeId;

final String purposeHeading;
// final String empCode;
final int purposeType;
final String description;
final String remark;
final String empId;
final String notificationL4;
final String passDuration;
final int delStatus;
final int isUsed;
final int exInt1;
final int exInt2;
final int exInt3;
final String exVar1;
final String exVar2;
final String exVar3;

  PurposeResponseModel(this.purposeId, this.purposeHeading,  this.purposeType,this.description,this.remark, this.empId, this.notificationL4, this.passDuration, this.delStatus, this.isUsed, this.exInt1, this.exInt2, this.exInt3, this.exVar1, this.exVar2, this.exVar3);

factory PurposeResponseModel.fromJson(Map<String, dynamic> json) => _$PurposeResponseModelFromJson(json);

  
  Map<String, dynamic> toJson() => _$PurposeResponseModelToJson(this);

 
 static String create(){
    return "CREATE TABLE $tableName (" +
      "$columnPurposeId INTEGER PRIMARY KEY ," +
      "$columnPurposeHeading TEXT," +
      "$columnPurposeType INTEGER," +
      "$columnDescription TEXT," +
      "$columnRemark TEXT," +
      "$columnEmpId TEXT," +
      "$columnNotificationL4 TEXT," +
      "$columnPassDuration TEXT," +
      "$columnDelStatus INTEGER," +
      "$columnIsUsed INTEGER," +
      "$columnExInt1 INTEGER," +
      "$columnExInt2 INTEGER," +
      "$columnExInt3 INTEGER," +
      "$columnExVar1 TEXT," +
      "$columnExVar2 TEXT," +
      "$columnExVar3 TEXT" +
    ")";
 }
 

}

class AuthResponseModelMaster{
  List<PurposeResponseModel> autheResponse;

  // AuthResponseModelMaster(
  //     this.autheResponse
  // );
  
  List<PurposeResponseModel> fromMapList(List<dynamic> list)
  {
    List<PurposeResponseModel> listModel=List();

    list.forEach((element) {
      listModel.add(PurposeResponseModel.fromJson(element));
    });
    return listModel;
  }
  
}