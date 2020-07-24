import 'package:mobx/mobx.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';

import 'package:security/local/dao/purposedao.dart';
import 'package:security/network/repository/PurposeListRepo.dart';


part 'purposeViewModel.g.dart';

class PurposeViewModel = _PurposeViewModel with _$PurposeViewModel;

abstract class _PurposeViewModel with Store {
  PurposeListRepo purposerepository;
  PurposeDao purposeDao;

  _PurposeViewModel() {
    purposerepository = PurposeListRepo();
    purposeDao = PurposeDao();
  }


  @observable
  List<PurposeResponseModel> model;


  @observable
  bool isLoading = false;

  @action
  insertFromLocal() {
    isLoading = true;
    purposerepository.getPurpose().then((response) {
      isLoading = false;
      purposeDao.insertPurpose(response.data).then((value) {
        fetchFromLocal();
      });
    });
  }

 // @action
  fetchFromLocal() {
    isLoading = true;
    purposeDao.getPurpose().then((value) {
      isLoading = false;
      model = value;
    });
  }


}
