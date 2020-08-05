

import 'package:dio/dio.dart';
import 'package:security/common/models/auth/authResponseModel.dart';
import 'package:security/common/models/auth/dashboard/dashboardCountModel.dart';
import 'package:security/network/base/endpoints.dart' as endPoints;
import 'package:security/network/client/networkclient.dart';
import 'package:security/network/model/httpresponce.dart';

class DashboardRepo{

HttpClient httpClient;

DashboardRepo(){
  httpClient=HttpClient();
}

 
 Future<HttpResponse> dashboard(String fromDate,String toDate,int empId) async{
   HttpResponse httpResponse=HttpResponse();
    
FormData formData = new FormData.fromMap({
    "fromDate": fromDate,
     "toDate": toDate,
      "empId": empId
  });

   await httpClient.post(endPoints.Auth().dashboard,body:formData).then((responce){
     if(responce.statusCode==200){
       httpResponse.status=responce.statusCode;
       httpResponse.message='Successful';
       httpResponse.data=DashboardCountModel.fromJson(responce.data);
     
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