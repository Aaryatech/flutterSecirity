import 'package:mobx/mobx.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';
import 'package:security/common/models/companyResponseModel.dart';
import 'package:security/local/dao/companyDao.dart';

import 'package:security/local/dao/purposedao.dart';
import 'package:security/network/repository/PurposeListRepo.dart';
import 'package:security/network/repository/companyListRepo.dart';


part 'companyViewModel.g.dart';

class CompanyViewModel = _CompanyViewModel with _$CompanyViewModel;

abstract class _CompanyViewModel with Store {
  CompanyListRepo companyListRepo;
  CompanyDao companyDao;

  _CompanyViewModel() {
    companyListRepo = CompanyListRepo();
    companyDao = CompanyDao();
  }


  @observable
  List<CompanyResponseModel> model;


  @observable
  bool isLoading = false;

  @action
  insertFromLocal() {
    isLoading = true;
    companyListRepo.getCompany().then((response) {
      isLoading = false;
      companyDao.insertCompany(response.data).then((value) {
        fetchFromLocal();
      });
    });
  }

 // @action
  fetchFromLocal() {
    isLoading = true;
    companyDao.getCompany().then((value) {
      isLoading = false;
      model = value;
    });
  }


}
