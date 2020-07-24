import 'package:mobx/mobx.dart';
import 'package:security/common/models/auth/authResponseModel.dart';
import 'package:security/local/dao/authdao.dart';
import 'package:security/local/dao/deletePurposedao.dart';
import 'package:security/network/repository/authenticationRepo.dart';
import 'package:security/network/repository/deletePurposeRepo.dart';

part 'deletePurposeViewModel.g.dart';

class DeletePurposeViewModel = _DeletePurposeViewModel with _$DeletePurposeViewModel;

abstract class _DeletePurposeViewModel with Store {
  DeletePurposeRepo deletePurposeRepo;
  DeletePurDao deletePurDao;

  _DeletePurposeViewModel() {
    deletePurposeRepo = DeletePurposeRepo();
    deletePurDao = DeletePurDao();
  }

  // @observable
  // int dscNumber;

  // @observable
  // AuthResponseModel model;

  @observable
  bool isLoading = false;

  @action
  deletePurpose(int purposeId) {
    isLoading = true;
    deletePurposeRepo.deletePurpose(purposeId).then((response) {
      isLoading = false;
      //if(response.message=="Successful")
      //{
      deletePurDao.deletePurposeDetails(purposeId).then((value) {
        fetchFromLocal();
  
      });
      
     // }
    });
  }

  @action
  fetchFromLocal() {
    isLoading = true;
    deletePurDao.getPurpose().then((value) {
      isLoading = false;
     // model = value;
    });
  }

  // @action
  // setDscNumber(int dsceNumber) {
  //   dscNumber = dsceNumber;
  // }
}
