
import 'package:security/common/models/auth/authResponseModel.dart';
import 'package:security/network/client/networkclient.dart';
import 'package:security/network/model/httpresponce.dart';
import '../base/endpoints.dart' as EndPoints;

class UserRepository{

HttpClient httpClient;
 
UserRepository(){
  httpClient=HttpClient();

}
   

   Future<HttpResponse> getUserList() async{

HttpResponse response = HttpResponse();

   final ret =  httpClient.client.get(EndPoints.Users().userList);  
    
    await ret.then((value)  {
      // print(value)
            response.status = value.statusCode;
        response.data = AuthResponseModel.fromJson(value.data);
        response.message = value.statusMessage;
 
 print(AuthResponseModel.fromJson(value.data));

 
    }).catchError((e) {
      response.status = 500;
      response.data = e;
      response.message = "Server Error";
    });
    

    return response;

  }

}