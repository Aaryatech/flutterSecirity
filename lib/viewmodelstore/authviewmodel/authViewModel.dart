import 'package:mobx/mobx.dart';
import 'package:security/common/models/auth/authResponseModel.dart';
import 'package:security/local/dao/authdao.dart';
import 'package:security/network/repository/authenticationRepo.dart';

part 'authViewModel.g.dart';

class AuthViewModel = _AuthViewModel with _$AuthViewModel;


abstract class _AuthViewModel with Store {
  final FormErrorState error = FormErrorState();
  AuthenticationRepo authrepository;
  AuthDao authDao;

  _AuthViewModel() {
    authrepository = AuthenticationRepo();
    authDao = AuthDao();
  }
 List<ReactionDisposer> _disposers;

  void setupValidations() {
    _disposers = [
      reaction((_) => dscNumber, validateDsc)
  
    ];
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  @observable
  String dscNumber;

  @observable
  AuthResponseModel model;

  @observable
  bool isLoading = false;

  @observable
  bool isAlert = false;

  @action
  authUser(String dscNumber) {
    isLoading = true;
    isAlert=true;
    authrepository.authenticateUser(dscNumber).then((response) {
      isLoading = false;
       isAlert=false;
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

   @action
  validateDsc(String text) {
    text.isEmpty
        ? error.dscError = 'Please Enter DSC Number'
        : error.dscError = null;
  }


void validateAll() {
    validateDsc(dscNumber);
    
  }


}

class FormErrorState = _FormErrorState with _$FormErrorState;

abstract class _FormErrorState with Store {
  @observable
  String dscError = '';

  @computed
  bool get hasErrors =>
      dscError != null ;
}