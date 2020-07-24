import 'package:dio/dio.dart';
import 'package:security/common/models/auth/authResponseModel.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';
import 'package:security/network/base/endpoints.dart' as endPoints;
import 'package:security/network/client/networkclient.dart';
import 'package:security/network/model/httpresponce.dart';

class AddPurposeRepo {
  HttpClient httpClient;

  AddPurposeRepo() {
    httpClient = HttpClient();
  }

  Future<HttpResponse> addPurpose(
      PurposeResponseModel purposeResponseModel) async {
    HttpResponse httpResponse = HttpResponse();

// FormData formData = new FormData.fromMap({
//     "purposeId": purposeResponseModel.purposeId,
//     "purposeHeading":  purposeResponseModel.purposeHeading,
//     "purposeType":  purposeResponseModel.purposeType,
//     "description":  purposeResponseModel.description,
//     "remark":  purposeResponseModel.remark
//   });

    await httpClient.post(endPoints.Purpose().savePurpose, body: {
      "purposeId": purposeResponseModel.purposeId,
      "purposeHeading": purposeResponseModel.purposeHeading,
      "purposeType": purposeResponseModel.purposeType,
      "description": purposeResponseModel.description,
      "remark": purposeResponseModel.remark,
      "empId": purposeResponseModel.empId,
      "notificationL4": purposeResponseModel.notificationL4,
      "passDuration": purposeResponseModel.passDuration,
      "delStatus": purposeResponseModel.delStatus,
      "isUsed": purposeResponseModel.isUsed,
      "exInt1": purposeResponseModel.exInt1,
      "exInt2": purposeResponseModel.exInt2,
      "exInt3": purposeResponseModel.exInt3,
      "exVar1": purposeResponseModel.exVar1,
      "exVar2": purposeResponseModel.exVar2,
      "exVar3": purposeResponseModel.exVar3
    }).then((responce) {
      if (responce.statusCode == 200) {
        httpResponse.status = responce.statusCode;
        httpResponse.message = 'Successful';
        httpResponse.data = AuthResponseModel.fromJson(responce.data);
      } else {
        httpResponse.status = 500;
        httpResponse.message = 'Something went wrong';
        httpResponse.data = null;
      }
    }).catchError((onError) {
      httpResponse.status = 400;
      httpResponse.message = 'Network not available';
      httpResponse.data = null;
    });

    return httpResponse;
  }
}
