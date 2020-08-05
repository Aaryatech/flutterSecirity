

import 'package:dio/dio.dart';
import 'package:security/common/models/auth/authResponseModel.dart';
import 'package:security/network/base/endpoints.dart' as endPoints;
import 'package:security/network/client/networkclient.dart';
import 'package:security/network/model/httpresponce.dart';

class AuthenticationRepo{

HttpClient httpClient;

AuthenticationRepo(){
  httpClient=HttpClient();
}

 
 Future<HttpResponse> authenticateUser(String dsc) async{
   HttpResponse httpResponse=HttpResponse();
    
FormData formData = new FormData.fromMap({
    "dscNumber": dsc
  });

   await httpClient.post(endPoints.Auth().authentication,body:formData).then((responce){
     if(responce.statusCode==200){
       httpResponse.status=responce.statusCode;
       httpResponse.message='Successful';
       httpResponse.data=AuthResponseModel.fromJson(responce.data);
     
     }else{
       httpResponse.status= 500;
       httpResponse.message='Something went wrong';
       httpResponse.data=null;
     
     }
   

   }).catchError((onError){
      print(onError);
    if(httpResponse.status == 400)
    {
       httpResponse.status= 400;
       httpResponse.message='Network not available';
       httpResponse.data=null;
    }else{
       httpResponse.status= 404;
       httpResponse.message='User Not Found';
       httpResponse.data=null;
    }
     
   }); 

   return httpResponse;
 }


}