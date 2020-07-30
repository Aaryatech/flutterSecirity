

import 'package:dio/dio.dart';
import 'package:security/common/models/auth/visitorResponseModel.dart';
import 'package:security/network/base/endpoints.dart' as endPoints;
import 'package:security/network/client/networkclient.dart';
import 'package:security/network/model/httpresponce.dart';

class AddVisitorRepo{

HttpClient httpClient;

AddVisitorRepo(){
  httpClient=HttpClient();
}

 
 Future<HttpResponse> addVisitor(VisitorResponseModel visitorResponseModel) async{
   HttpResponse httpResponse=HttpResponse();
    
// FormData formData = new FormData.fromMap({
//     "dscNumber": dsc
//   });

   await httpClient.post(endPoints.Visitor().saveVisitor,body: {
      "visitorId": visitorResponseModel.visitorId,
      "personName": visitorResponseModel.personName,
      "personCompany": visitorResponseModel.personCompany,
      "mobileNo": visitorResponseModel.mobileNo,
      "noOfPerson": visitorResponseModel.noOfPerson,
      "purposeRemark": visitorResponseModel.purposeRemark,
      "visitPurposeText": visitorResponseModel.visitPurposeText,
      "purposeId": visitorResponseModel.purposeId,
      "personToMeet": visitorResponseModel.personToMeet,
      "prsonId": visitorResponseModel.prsonId,
      "idProof": visitorResponseModel.idProof,
      "idProof1": visitorResponseModel.idProof1,
      "otherPhoto": visitorResponseModel.otherPhoto,
      "gatePasstype": visitorResponseModel.gatePasstype,
      "takeMobile": visitorResponseModel.takeMobile,
      "delStatus": visitorResponseModel.delStatus,
      "isUsed": visitorResponseModel.isUsed,
      "exInt1": visitorResponseModel.exInt1,
      "exInt2": visitorResponseModel.exInt2,
      "exInt3": visitorResponseModel.exInt3,
      "exVar1": visitorResponseModel.exVar1,
      "exVar2": visitorResponseModel.exVar2,
      "exVar3": visitorResponseModel.exVar3
    }).then((responce){
     if(responce.statusCode==200){
       httpResponse.status=responce.statusCode;
       httpResponse.message='Successful';
       httpResponse.data=VisitorResponseModelMaster().fromMapList(responce.data);
     
     }else{
       httpResponse.status= 500;
       httpResponse.message='Something went wrong';
       httpResponse.data=null;
     
     }
   

   }).catchError((onError){
       httpResponse.status= 400;
       httpResponse.message='Network not available';
       httpResponse.data=onError.toString();
     
   }); 

   return httpResponse;
 }


}