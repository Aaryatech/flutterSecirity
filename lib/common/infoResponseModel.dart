
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';

part 'infoResponseModel.g.dart';

@JsonSerializable(nullable: false)
class InfoResponseModel{

  // static final String tableName = 'authtable';
  // static final String columnMessage = 'message';
  // static final String columnError = 'error';
 

@JsonSerializable(nullable : false)
final String message;
// final String empCode;
final bool error;

 InfoResponseModel(this.message, this.error);

factory InfoResponseModel.fromJson(Map<String, dynamic> json) => _$InfoResponseModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$InfoResponseModelToJson(this);

 
//  static String create(){
//     return "CREATE TABLE $tableName (" +
//       "$columnId INTEGER PRIMARY KEY ," +
//       "$columnTitle TEXT," +
//       "$columnCompanyId INTEGER" +
//     ")";
//  }
  


 

}

