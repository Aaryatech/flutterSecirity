
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'companyResponseModel.g.dart';

@JsonSerializable(nullable: false)
class CompanyResponseModel{

  static final String tableName = 'company';
  static final String columnCompanyId= 'companyId';
  static final String columnCompanytName = 'companyName';
 static final String columnCompanyLogo = 'companyLogo';
 static final String columnCompanyRemark = 'companyRemarks';
 static final String columnCompanyDelstatus = 'delStatus';
 static final String columnCompanyIsActive = 'isActive';
 static final String columnCompanymarkUserId = 'makerUserId';
 static final String columnCompanyMarkDateTime= 'makerEnterDatetime';
 static final String columnCompanyExInt1 = 'exInt1';
 static final String columnCompanyExInt2 = 'exInt2';
 static final String columnCompanyExInt3 = 'exInt3';
 static final String columnCompanyExVar1 = 'exVar1';
 static final String columnCompanyExVar2 = 'exVar2';
 static final String columnCompanyExVar3 = 'exVar3';
 
 
@JsonSerializable(nullable : false)
final int companyId;
final String companyName;
final String companyLogo;
final String companyRemarks;
final int delStatus;
final int isActive;
final int makerUserId;
final String makerEnterDatetime;
final int exInt1;
final int exInt2;
final int exInt3;
final String exVar1;
final String exVar2;
final String exVar3;

  CompanyResponseModel(this.companyId, this.companyName,  this.companyLogo,this.companyRemarks,this.delStatus, this.isActive, this.makerUserId, this.makerEnterDatetime,this.exInt1, this.exInt2, this.exInt3, this.exVar1, this.exVar2, this.exVar3);

factory CompanyResponseModel.fromJson(Map<String, dynamic> json) => _$CompanyResponseModelFromJson(json);

  
  Map<String, dynamic> toJson() => _$CompanyResponseModelToJson(this);

 
 static String create(){
    return "CREATE TABLE $tableName (" +
      "$columnCompanyId INTEGER PRIMARY KEY ," +
      "$columnCompanytName TEXT," +
      "$columnCompanyLogo TEXT," +
      "$columnCompanyRemark TEXT," +
      "$columnCompanyDelstatus INTEGER," +
      "$columnCompanyIsActive INTEGER," +
      "$columnCompanymarkUserId INTEGER," +
      "$columnCompanyMarkDateTime TEXT," +
      "$columnCompanyExInt1 INTEGER," +
      "$columnCompanyExInt2 INTEGER," +
      "$columnCompanyExInt3 INTEGER," +
      "$columnCompanyExVar1 TEXT," +
      "$columnCompanyExVar2 TEXT," +
      "$columnCompanyExVar3 TEXT" +
    ")";
 }
 
}

class AuthResponseModelMaster{
  List<CompanyResponseModel> autheResponse;

  // AuthResponseModelMaster(
  //     this.autheResponse
  // );
  
  List<CompanyResponseModel> fromMapList(List<dynamic> list)
  {
    List<CompanyResponseModel> listModel=List();

    list.forEach((element) {
      listModel.add(CompanyResponseModel.fromJson(element));
    });
    return listModel;
  }
  
}