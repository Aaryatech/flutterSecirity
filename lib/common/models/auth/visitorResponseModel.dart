
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'visitorResponseModel.g.dart';

@JsonSerializable(nullable: false)
class VisitorResponseModel{

  static final String tableName = 'visitor';
  static final String columnVisitorId= 'visitorId';
  static final String columnPersonName = 'personName';
 static final String columnPersonCompany = 'personCompany';
 static final String columnMobileNo = 'mobileNo';
 static final String columnNoOfPerson = 'noOfPerson';
 static final String columnPurposeRemark = 'purposeRemark';
 static final String columnVisitPurposeText = 'visitPurposeText';
 static final String columnPurposeId= 'purposeId';
 static final String columnPersonToMeet = 'personToMeet';
 static final String columnPrsonId = 'prsonId';
 static final String columnIdProof = 'idProof';
 static final String columnIdProof1 = 'idProof1';
 static final String columnOtherPhoto = 'otherPhoto';
 static final String columnGatePasstype = 'gatePasstype';
 static final String columnTakeMobile = 'takeMobile';
 static final String columnDelStatus = 'delStatus';
 static final String columnIsUsed = 'isUsed';
 static final String columnExInt1 = 'exInt1';
 static final String columnExInt2 = 'exInt2';
 static final String columnExInt3 = 'exInt3';
 static final String columnExVar1 = 'exVar1';
 static final String columnExVar2 = 'exVar2';
 static final String columnExVar3 = 'exVar3';
 
@JsonSerializable(nullable : false)
final int visitorId;

final String personName;
// final String empCode;
final String personCompany;
final String mobileNo;
final int noOfPerson;
final String purposeRemark;
final String visitPurposeText;
final int purposeId;
final String personToMeet;
final int prsonId;
final String idProof;
final String idProof1;
final String otherPhoto;
final int gatePasstype;
final String takeMobile;
final int delStatus;
final int isUsed;
final int exInt1;
final int exInt2;
final int exInt3;
final String exVar1;
final String exVar2;
final String exVar3;

  VisitorResponseModel(this.visitorId, this.personName,  this.personCompany,this.mobileNo,this.noOfPerson,this.purposeRemark,  this.visitPurposeText,this.purposeId,this.personToMeet,this.prsonId, this.idProof, this.idProof1, this.otherPhoto, this.gatePasstype, this.takeMobile, this.delStatus, this.isUsed, this.exInt1, this.exInt2, this.exInt3, this.exVar1,this.exVar2,this.exVar3);

factory VisitorResponseModel.fromJson(Map<String, dynamic> json) => _$VisitorResponseModelFromJson(json);

  
  Map<String, dynamic> toJson() => _$VisitorResponseModelToJson(this);

 
 static String create(){
    return "CREATE TABLE $tableName (" +
      "$columnVisitorId INTEGER PRIMARY KEY ," +
      "$columnPersonName TEXT," +
      "$columnPersonCompany INTEGER," +
      "$columnMobileNo TEXT," +
      "$columnNoOfPerson INTEGER," +
      "$columnPurposeRemark TEXT," +
      "$columnVisitPurposeText TEXT," +
      "$columnPurposeId INTEGER," +
      "$columnPersonToMeet INTEGER," +
      "$columnPrsonId INTEGER," +
      "$columnIdProof TEXT," +
      "$columnIdProof1 TEXT," +
      "$columnOtherPhoto TEXT," +
      "$columnGatePasstype INTEGER," +
      "$columnTakeMobile TEXT," +
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

class VisitorResponseModelMaster{
  List<VisitorResponseModel> autheResponse;

  // AuthResponseModelMaster(
  //     this.autheResponse
  // );
  
  List<VisitorResponseModel> fromMapList(List<dynamic> list)
  {
    List<VisitorResponseModel> listModel=List();

    list.forEach((element) {
      listModel.add(VisitorResponseModel.fromJson(element));
    });
    return listModel;
  }
  
}