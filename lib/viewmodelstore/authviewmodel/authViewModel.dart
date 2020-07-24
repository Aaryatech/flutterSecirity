import 'package:mobx/mobx.dart';
import 'package:security/common/models/auth/authResponseModel.dart';
import 'package:security/local/dao/authdao.dart';
import 'package:security/network/repository/authenticationRepo.dart';

part 'authViewModel.g.dart';

class AuthViewModel = _AuthViewModel with _$AuthViewModel;

abstract class _AuthViewModel with Store {
  AuthenticationRepo authrepository;
  AuthDao authDao;

  _AuthViewModel() {
    authrepository = AuthenticationRepo();
    authDao = AuthDao();
  }

  @observable
  String dscNumber;

  @observable
  AuthResponseModel model;

  @observable
  bool isLoading = false;

  @action
  authUser(String dscNumber) {
    isLoading = true;
    authrepository.authenticateUser(dscNumber).then((response) {
      isLoading = false;
      authDao.insertAuthDetails(response.data).then((value) {
        fetchFromLocal();
      });
    });
  }

  @action
  fetchFromLocal() {
    isLoading = true;
    authDao.getAuthUser().then((value) {
      isLoading = false;
      model = value;
    });
  }

  @action
  setDscNumber(String dsceNumber) {
    dscNumber = dsceNumber;
  }
}
