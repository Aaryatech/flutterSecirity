
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';

part 'authResponseModel.g.dart';

@JsonSerializable(nullable: false)
class AuthResponseModel{

  static final String tableName = 'authtable';
  static final String columnId = 'empId';
  static final String columnTitle = 'empDsc';
  static final String columnCompanyId = 'companyId';
  static final String columnEmpCatId= 'empCatId';
  static final String columnEmpTypeId = 'empTypeId';
  static final String columnEmpDeptId = 'empDeptId';
  static final String columnLocId = 'locId';
  static final String columnEmpFname = 'empFname';
  static final String columnEmpMname = 'empMname';
  static final String columnEmpSname = 'empSname';
  static final String columnEmpPhoto = 'empPhoto';
  static final String columnEmpMobile1 = 'empMobile1';
  static final String columnEmpMobile2 = 'empMobile2';
  static final String columnEmpEmail = 'empEmail';
  static final String columnEmpAddressTemp = 'empAddressTemp';
  static final String columnEmpAddressPerm = 'empAddressPerm';
  static final String columnEmpBloodgrp = 'empBloodgrp';
  static final String columnEmpEmergencyPerson1 = 'empEmergencyPerson1';
  static final String columnEmpEmergencyNo1 = 'empEmergencyNo1';
  static final String columnEmpEmergencyPerson2 = 'empEmergencyPerson2';
  static final String columnEmpEmergencyNo2 = 'empEmergencyNo2';
  static final String columnEmpRatePerhr = 'empRatePerhr';
  static final String columnEmpJoiningDate = 'empJoiningDate';
  static final String columnEmpPrevExpYrs = 'empPrevExpYrs';
  static final String columnEmpPrevExpMonths = 'empPrevExpMonths';
  static final String columnEmpLeavingDate = 'empLeavingDate';
  static final String columnEmpLeavingReason = 'empLeavingReason';
  static final String columnLockPeriod = 'lockPeriod';
  static final String columnTermConditions= 'termConditions';
  static final String columnSalaryId = 'salaryId';
  static final String columnDelStatus = 'delStatus';
  static final String columnIsActive= 'isActive';
  static final String columnMakerUserId = 'makerUserId';
  static final String columnMakerEnterDatetime = 'makerEnterDatetime';
  static final String columnExInt1 = 'exInt1';
  static final String columnExInt2 = 'exInt2';
  static final String columnExInt3 = 'exInt3';
  static final String columnExVar1 = 'exVar1';
  static final String columnExVar2 = 'exVar2';
  static final String columnExVar3 = 'exVar3';
  static final String columnGrossSalary = 'grossSalary';
  static final String columnNoOfHrs = 'noOfHrs';
  static final String columnGender = 'gender';
  static final String columnDob = 'dob';
  static final String columnScanCopy1 = 'scanCopy1';
  static final String columnScanCopy2 = 'scanCopy2';
  static final String columnPf = 'pf';
  static final String columnEsic = 'esic';
  static final String columnBonus = 'bonus';
  static final String columnCl = 'cl';
  static final String columnSl = 'sl';
  static final String columnPl = 'pl';
                       


@JsonSerializable(nullable : false)
final int empId;

final String empDsc;
// final String empCode;
final int companyId;
final int empCatId;
final int empTypeId;
final int empDeptId;

final int locId;
final String empFname;
final String empMname;
final String empSname;
final String empPhoto;

final String empMobile1;
final String empMobile2;

final String empEmail;
final String empAddressTemp;

final String empAddressPerm;
final String empBloodgrp;
final String empEmergencyPerson1;
final String empEmergencyNo1;
final String empEmergencyPerson2;
final String empEmergencyNo2;
final int empRatePerhr;
final String empJoiningDate;
final int empPrevExpYrs;
final int empPrevExpMonths;
final String empLeavingDate;
final String empLeavingReason;
final String lockPeriod;

final String termConditions;
final int salaryId;
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

final int grossSalary;
final int noOfHrs;
final int gender;
final String dob;
final String scanCopy1;
final String scanCopy2;
final int pf;
final int esic;
final int bonus;

final int cl;
final int sl;
final int pl;

//AuthResponseModel(this.empId, this.empDsc,  this.companyId);
AuthResponseModel(this.empId, this.empDsc, this.companyId, this.empCatId, this.empTypeId, this.empDeptId, this.locId, this.empFname, this.empMname, this.empSname, this.empPhoto, this.empMobile1, this.empMobile2, this.empEmail, this.empAddressTemp, this.empAddressPerm, this.empBloodgrp, this.empEmergencyPerson1, this.empEmergencyNo1, this.empEmergencyPerson2, this.empEmergencyNo2, this.empRatePerhr, this.empJoiningDate, this.empPrevExpYrs, this.empPrevExpMonths, this.empLeavingDate, this.empLeavingReason, this.lockPeriod, this.termConditions, this.salaryId, this.delStatus, this.isActive, this.makerUserId, this.makerEnterDatetime, this.exInt1, this.exInt2, this.exInt3, this.exVar1, this.exVar2, this.exVar3, this.grossSalary, this.noOfHrs, this.gender, this.dob, this.scanCopy1, this.scanCopy2, this.pf, this.esic, this.bonus, this.cl, this.sl, this.pl);

factory AuthResponseModel.fromJson(Map<String, dynamic> json) => _$AuthResponseModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$AuthResponseModelToJson(this);


  

 static String create(){
    return "CREATE TABLE $tableName (" +
      "$columnId INTEGER PRIMARY KEY ," +
      "$columnTitle TEXT," +
      "$columnCompanyId INTEGER" +
      "$columnEmpCatId INTEGER," +
      "$columnEmpTypeId INTEGER," +
      "$columnEmpDeptId INTEGER," +
      "$columnLocId INTEGER," +
      "$columnEmpFname TEXT," +
      "$columnEmpMname TEXT," +
      "$columnEmpSname TEXT," +
      "$columnEmpPhoto TEXT," +
      "$columnEmpMobile1 TEXT," +
      "$columnEmpMobile2 TEXT," +
      "$columnEmpEmail TEXT," +
      "$columnEmpAddressTemp TEXT," +
      "$columnEmpAddressPerm TEXT," +
      "$columnEmpBloodgrp TEXT," +
      "$columnEmpEmergencyPerson1 TEXT," +
      "$columnEmpEmergencyNo1 TEXT," +
      "$columnEmpEmergencyPerson2 TEXT," +
      "$columnEmpEmergencyNo2 TEXT," +
      "$columnEmpRatePerhr INTEGER," +
      "$columnEmpJoiningDate TEXT," +
      "$columnEmpPrevExpYrs INTEGER," +
      "$columnEmpPrevExpMonths INTEGER," +
      "$columnEmpLeavingDate TEXT," +  
      "$columnEmpLeavingReason TEXT," +
      "$columnLockPeriod TEXT," +
      "$columnTermConditions TEXT," +
      "$columnSalaryId INTEGER," + 
      "$columnDelStatus INTEGER," +
      "$columnIsActive INTEGER," +
      "$columnMakerUserId INTEGER," +
      "$columnMakerEnterDatetime TEXT," +
      "$columnExInt1 INTEGER," + 
      "$columnExInt2 INTEGER," +
      "$columnExInt3 INTEGER," +  
      "$columnExVar1 TEXT," +
      "$columnExVar2 TEXT," +
      "$columnExVar3 TEXT," +
      "$columnGrossSalary INTEGER," +
      "$columnNoOfHrs INTEGER," +
      "$columnGender TEXT," +
      "$columnDob TEXT," +
      "$columnScanCopy1 TEXT," +

      "$columnScanCopy2 TEXT," +
      "$columnPf INTEGER," +
      "$columnEsic INTEGER," +
      "$columnBonus INTEGER," +
      "$columnCl INTEGER," +
      "$columnSl INTEGER," +

      "$columnPl INTEGER" +
      
     
                      
    ")";
 }


 

}

