import 'package:mobx/mobx.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';
import 'package:security/local/dao/addPurposedao.dart';
import 'package:security/network/repository/addPurposeRepo.dart';
part 'addPurposeViewModel.g.dart';

class AddPurposeStore = _AddPurposeStore with _$AddPurposeStore;

abstract class _AddPurposeStore with Store {
  final FormErrorState error = FormErrorState();
  AddPurposeRepo addrepository;
  AddPurDao addPurDao;

  _AddPurposeStore() {
    addrepository = AddPurposeRepo();
    addPurDao = AddPurDao();
  }

  List<ReactionDisposer> _disposers;

  void setupValidations() {
    _disposers = [
      reaction((_) => purpose, validatePurpose),
      reaction((_) => purposeHeading, validatePurposeHeading),
      reaction((_) => desc, validateDesc),
      reaction((_) => remark, validateRemark)
    ];
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  @observable
  String purpose = '';

  @observable
  String purposeHeading = '';

  @observable
  String desc = '';

  @observable
  String remark = '';

  @observable
  bool isLoading = false;

  @observable
  bool isAlert = false;

  // @observable
  // PurposeResponseModel model;

  
  @action
  setPurpose(String purpo) {
    purpose = purpo;
  }

  @action
  setPurposeHeading(String purposeHea) {
    purposeHeading = purposeHea;
  }

  @action
  setDesc(String des) {
    this.desc = des;
  }

  @action
  setRemark(String rema) {
    remark = rema;
  }

  @action
  buttonClick(PurposeResponseModel purposeResponseModel) {
    isLoading = true;
    isAlert=true;
    // addrepository
    //     .addPurpose(PurposeResponseModel(0, purposeHeading, 1, desc, remark,
    //         "0", "NA", "NA", 1, 1, 0, 0, 0, purpose, null, null))
    //     .then((response) {
       addrepository
        .addPurpose(purposeResponseModel)
        .then((response) {
      isLoading = false;
       isAlert=false;
      addPurDao.insertPurpose(response.data).then((value) {
        fetchFromLocal();
       
      //  isAlert=false;
      });
    });
  }

  @action
  fetchFromLocal() {
    isLoading = true;
    addPurDao.getPurpose().then((value) {
      isLoading = false;
      //model = value;
    });
  }

  @action
  validatePurpose(String text) {
    text.isEmpty
        ? error.purposError = 'Please Select Purpose'
        : error.purposError = null;
  }

  @action
  validatePurposeHeading(String text) {
    text.isEmpty
        ? error.purposeHeadingError = 'Purpose Heading cannot Empty'
        : error.purposeHeadingError = null;
  }

  @action
  validateDesc(String desc) {
    desc.isEmpty
        ? error.descError = 'Description cannot Empty'
        : error.descError = null;
  }

  @action
  validateRemark(String remark) {
    remark.isEmpty
        ? error.remarkError = 'Remark cannot Empty'
        : error.remarkError = null;
  }

  void validateAll() {
    validatePurpose(purpose);
    validateRemark(remark);
    validateDesc(desc);
    validatePurposeHeading(purposeHeading);
  }
}

class FormErrorState = _FormErrorState with _$FormErrorState;

abstract class _FormErrorState with Store {
  @observable
  String purposError = '';

  @observable
  String purposeHeadingError = '';

  @observable
  String descError = '';

  @observable
  String remarkError = '';

  @computed
  bool get hasErrors =>
      purposError != null ||
      purposeHeadingError != null ||
      descError != null ||
      remarkError != null;
}
