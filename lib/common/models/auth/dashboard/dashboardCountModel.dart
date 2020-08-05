
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:security/common/models/auth/dashboard/empGatepassCountModel.dart';
import 'package:security/common/models/auth/dashboard/matGatepassCountModel.dart';
import 'package:security/common/models/auth/dashboard/matGatepassEmpWiseCountModel.dart';
import 'package:security/common/models/auth/dashboard/subGatepassCount.dart';
import 'package:security/common/models/auth/dashboard/visAndMaintGatepassCountModel.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';

part 'dashboardCountModel.g.dart';

@JsonSerializable(nullable: false)
class DashboardCountModel{

  
  
@JsonSerializable(nullable : false)
final VisAndMaintGatepassModel visAndMaintGatepassModel;

final EmpGateppassCountModel empGateppassCountModel;
// final String empCode;
final SubGateppassCount subGateppassCount;
final MatGatepassCountModel matGatepassCountModel;
final MatGatepassEmpWiseModel matGatepassEmpWiseModel;


//AuthResponseModel(this.empId, this.empDsc,  this.companyId);
DashboardCountModel(this.visAndMaintGatepassModel, this.empGateppassCountModel, this.subGateppassCount, this.matGatepassCountModel, this.matGatepassEmpWiseModel);

factory DashboardCountModel.fromJson(Map<String, dynamic> json) => _$DashboardCountModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$DashboardCountModelToJson(this);

 



 

}

