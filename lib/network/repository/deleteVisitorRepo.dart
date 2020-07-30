

import 'package:dio/dio.dart';
import 'package:security/common/infoResponseModel.dart';
import 'package:security/common/models/auth/authResponseModel.dart';
import 'package:security/network/base/endpoints.dart' as endPoints;
import 'package:security/network/client/networkclient.dart';
import 'package:security/network/model/httpresponce.dart';

class DeleteVisitorRepo{

HttpClient httpClient;

DeleteVisitorRepo(){
  httpClient=HttpClient();
}

 
 Future<HttpResponse> deleteVisitor(int visitorId) async{
   HttpResponse httpResponse=HttpResponse();
    
FormData formData = new FormData.fromMap({
    "visitorId": visitorId
  });

   await httpClient.post(endPoints.Visitor().deleteVisitor,body:formData).then((responce){
     if(responce.statusCode==200){
       httpResponse.status=responce.statusCode;
       httpResponse.message='Successful';
       httpResponse.data=InfoResponseModel.fromJson(responce.data);
     
     }else{
       httpResponse.status= 500;
       httpResponse.message='Something went wrong';
       httpResponse.data=null;
     
     }
   

   }).catchError((onError){
       httpResponse.status= 400;
       httpResponse.message='Network not available';
       httpResponse.data=null;
     
   }); 

   return httpResponse;
 }


}