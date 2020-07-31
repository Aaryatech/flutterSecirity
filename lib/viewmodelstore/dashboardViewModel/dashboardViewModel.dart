import 'package:mobx/mobx.dart';
import 'package:security/common/models/companyResponseModel.dart';

import 'package:security/network/repository/dashboardRepo.dart';


part 'dashboardViewModel.g.dart';

class DashboardViewModel = _DashboardViewModel with _$DashboardViewModel;

abstract class _DashboardViewModel with Store {
  DashboardRepo dashboardRepo;
  //CompanyDao companyDao;

  _DashboardViewModel() {
    dashboardRepo = DashboardRepo();
    //purposeDao = PurposeDao();
  }


  // @observable
  // List<CompanyResponseModel> model;


  @observable
  bool isLoading = false;

  @action
  insertFromLocal(String fromDate,String toDate,int empId) {
    isLoading = true;
    dashboardRepo.dashboard(fromDate,toDate,empId).then((response) {
      isLoading = false;
    //  companyDao.insertCompany(response.data).then((value) {
   //     fetchFromLocal();
     // });
    });
  }

  @action
  fetchFromLocal() {
    //isLoading = true;
   // companyDao.getCompany().then((value) {
    //  isLoading = false;
    //  model = value;
   // });
  }


}
