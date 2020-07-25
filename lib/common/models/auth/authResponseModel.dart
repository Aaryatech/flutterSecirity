
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

@JsonSerializable(nullable : false)
final int empId;

final String empDsc;
// final String empCode;
final int companyId;



  AuthResponseModel(this.empId, this.empDsc,  this.companyId);

factory AuthResponseModel.fromJson(Map<String, dynamic> json) => _$AuthResponseModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$AuthResponseModelToJson(this);

 
 static String create(){
    return "CREATE TABLE $tableName (" +
      "$columnId INTEGER PRIMARY KEY ," +
      "$columnTitle TEXT," +
      "$columnCompanyId INTEGER" +
    ")";
 }


 

}

// class AuthResponseModelMaster{
//   List<PurposeResponseModel> autheResponse;

//   // AuthResponseModelMaster(
//   //     this.autheResponse
//   // );
  
//   List<PurposeResponseModel> fromMapList(List<dynamic> list)
//   {
//     List<PurposeResponseModel> listModel=List();

//     list.forEach((element) {
//       listModel.add(PurposeResponseModel.fromJson(element));
//     });
//     return listModel;
//   }
  
// }