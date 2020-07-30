

import 'package:dio/dio.dart';
import 'package:security/common/models/auth/authResponseModel.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';
import 'package:security/common/models/companyResponseModel.dart';
import 'package:security/network/base/endpoints.dart' as endPoints;
import 'package:security/network/client/networkclient.dart';
import 'package:security/network/model/httpresponce.dart';

class CompanyListRepo{

HttpClient httpClient;

CompanyListRepo(){
  httpClient=HttpClient();
}

 
 Future<HttpResponse> getCompany() async{
   HttpResponse httpResponse=HttpResponse();
    
// FormData formData = new FormData.fromMap({
//     "dscNumber": dsc
//   });

   await httpClient.get(endPoints.Company().getCompany).then((responce){
     if(responce.statusCode==200){
       httpResponse.status=responce.statusCode;
       httpResponse.message='Successful';
       httpResponse.data=CompanyResponseModelMaster().fromMapList(responce.data);
     
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