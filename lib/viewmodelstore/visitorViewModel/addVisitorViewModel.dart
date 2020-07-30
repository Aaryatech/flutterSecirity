import 'package:mobx/mobx.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';
import 'package:security/common/models/auth/visitorResponseModel.dart';
import 'package:security/local/dao/addPurposedao.dart';
import 'package:security/local/dao/visitordao.dart';
import 'package:security/network/repository/addPurposeRepo.dart';
import 'package:security/network/repository/addVisitorRepo.dart';
import 'package:security/network/repository/deleteVisitorRepo.dart';
part 'addVisitorViewModel.g.dart';

class AddVisitorStore = _AddVisitorStore with _$AddVisitorStore;

abstract class _AddVisitorStore with Store {
  final FormErrorState error = FormErrorState();
  AddVisitorRepo addVisitorRepo;

  VisitorDao visitorDao;

  _AddVisitorStore() {
    addVisitorRepo = AddVisitorRepo();
    visitorDao = VisitorDao();
  }

  List<ReactionDisposer> _disposers;

  void setupValidations() {
    _disposers = [
      reaction((_) => visitorName, validateVisitorName),
      reaction((_) => company, validateCompany),
      reaction((_) => mobNo, validateMob),
      reaction((_) => noOfPerson, validateNoOfPerson),
      reaction((_) => remark, validateRemark),
      reaction((_) => purpose, validatePurpose),
      reaction((_) => personToMeet, validatePersonToMeet)
    ];
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  @observable
  String visitorName = '';

  @observable
  String company = '';

  @observable
  String mobNo = '';

  @observable
  String noOfPerson = '';

  @observable
  String remark = '';

  @observable
  String purpose = '';

  @observable
  String personToMeet = '';

  @observable
  bool isLoading = false;

  @observable
  bool isAlert = false;

  // @observable
  // PurposeResponseModel model;


  @action
  setVisitorName(String vistname) {
    visitorName = vistname;
  }

  @action
  setCompany(String comp) {
    company = comp;
  }

  @action
  setMob(String mob) {
    this.mobNo = mob;
  }

  @action
  setNoOfPerson(String noPer) {
    noOfPerson = noPer;
  }

  @action
  setRemark(String rema) {
    remark = rema;
  }

  @action
  setPurpose(String pur) {
    purpose = pur;
  }

  @action
  setPersonToMeet(String pertoMeet) {
    personToMeet = pertoMeet;
  }

  @action
  buttonClick(VisitorResponseModel visitorResponseModel) {
    isLoading = true;
    isAlert=true;
    // addrepository
    //     .addPurpose(PurposeResponseModel(0, purposeHeading, 1, desc, remark,
    //         "0", "NA", "NA", 1, 1, 0, 0, 0, purpose, null, null))
    //     .then((response) {
       addVisitorRepo
        .addVisitor(visitorResponseModel)
        .then((response) {
      isLoading = false;
       isAlert=false;
      visitorDao.insertVisitor(response.data).then((value) {
        fetchFromLocal();
       
      //  isAlert=false;
      });
    });
  }

   

  @action
  fetchFromLocal() {
    isLoading = true;
    visitorDao.getVisitor().then((value) {
      isLoading = false;
      //model = value;
    });
  }

  @action
  validateVisitorName(String visitorName) {
    visitorName.isEmpty
        ? error.visitorNameError = 'Please Enter Visitor Name'
        : error.visitorNameError = null;
  }

  @action
  validateCompany(String company) {
    company.isEmpty
        ? error.companyError = 'Please Select Company'
        : error.companyError = null;
  }

  @action
  validateMob(String mob) {
    mob.isEmpty
        ? error.mobError = 'Please Enter Mob No'
        : error.mobError = null;
  }

  @action
  validateNoOfPerson(String noPerson) {
    noPerson.isEmpty
        ? error.noOfPersonkError = 'Please Enter No Of Person'
        : error.noOfPersonkError = null;
  }

  @action
  validateRemark(String remark) {
    remark.isEmpty
        ? error.remarkError = 'Please Enter Remark'
        : error.remarkError = null;
  }

  @action
  validatePurpose(String pupose) {
    pupose.isEmpty
        ? error.purposeError = 'Please Select Purpose'
        : error.purposeError = null;
  }

  @action
  validatePersonToMeet(String personMeet) {
    personMeet.isEmpty
        ? error.persontoMeetError = 'Please Select Person to Meet'
        : error.persontoMeetError = null;
  }

  void validateAll() {
    validateVisitorName(visitorName);
    validateCompany(company);
    validateMob(mobNo);
    validateNoOfPerson(noOfPerson);
    validateRemark(remark);
    validatePurpose(purpose);
    validatePersonToMeet(personToMeet);
  }
}

class FormErrorState = _FormErrorState with _$FormErrorState;

abstract class _FormErrorState with Store {
  @observable
  String visitorNameError = '';

  @observable
  String companyError = '';

  @observable
  String mobError = '';

  @observable
  String noOfPersonkError = '';

   @observable
  String remarkError = '';

   @observable
  String purposeError = '';

   @observable
  String persontoMeetError = '';

  @computed
  bool get hasErrors =>
      visitorNameError != null ||
      companyError != null ||
      mobError != null ||
      noOfPersonkError != null ||
      remarkError != null ||
      purposeError != null ||
      persontoMeetError != null;
}
