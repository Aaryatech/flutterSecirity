import 'package:mobx/mobx.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';
import 'package:security/common/models/auth/visitorResponseModel.dart';

import 'package:security/local/dao/purposedao.dart';
import 'package:security/local/dao/visitordao.dart';
import 'package:security/network/repository/PurposeListRepo.dart';
import 'package:security/network/repository/deleteVisitorRepo.dart';
import 'package:security/network/repository/visitorListRepo.dart';


part 'visitorViewModel.g.dart';

class VisitorViewModel = _VisitorViewModel with _$VisitorViewModel;

abstract class _VisitorViewModel with Store {
  VisitorListRepo visitorrepository;
  VisitorDao visitorDao;
  DeleteVisitorRepo deleteVisitorRepo;
  
  _VisitorViewModel() {
    visitorrepository = VisitorListRepo();
     deleteVisitorRepo = DeleteVisitorRepo();
    visitorDao = VisitorDao();
  }

  @observable
  List<VisitorResponseModel> model;

  @observable
  bool isLoading = false;

  @action
  insertFromLocal() {
    isLoading = true;
    visitorrepository.getVisitor().then((response) {
      isLoading = false;
      visitorDao.insertVisitor(response.data).then((value) {
        fetchFromLocal();
      });
    });
  }



@action
  deleteVisitor(int visitorId) {
    isLoading = true;
    deleteVisitorRepo.deleteVisitor(visitorId).then((response) {
      isLoading = false;
      //if(response.message=="Successful")
      //{
      visitorDao.deleteVisitorDetails(visitorId).then((value) {
        fetchFromLocal();
  
      });
      
     // }
    });
  }

 // @action
  fetchFromLocal() {
    isLoading = true;
    visitorDao.getVisitor().then((value) {
      isLoading = false;
      model = value;
    });
  }


}
