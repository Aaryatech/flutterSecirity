// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addPurposeViewModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddPurposeStore on _AddPurposeStore, Store {
  final _$purposeAtom = Atom(name: '_AddPurposeStore.purpose');

  @override
  String get purpose {
    _$purposeAtom.reportRead();
    return super.purpose;
  }

  @override
  set purpose(String value) {
    _$purposeAtom.reportWrite(value, super.purpose, () {
      super.purpose = value;
    });
  }

  final _$purposeHeadingAtom = Atom(name: '_AddPurposeStore.purposeHeading');

  @override
  String get purposeHeading {
    _$purposeHeadingAtom.reportRead();
    return super.purposeHeading;
  }

  @override
  set purposeHeading(String value) {
    _$purposeHeadingAtom.reportWrite(value, super.purposeHeading, () {
      super.purposeHeading = value;
    });
  }

  final _$descAtom = Atom(name: '_AddPurposeStore.desc');

  @override
  String get desc {
    _$descAtom.reportRead();
    return super.desc;
  }

  @override
  set desc(String value) {
    _$descAtom.reportWrite(value, super.desc, () {
      super.desc = value;
    });
  }

  final _$remarkAtom = Atom(name: '_AddPurposeStore.remark');

  @override
  String get remark {
    _$remarkAtom.reportRead();
    return super.remark;
  }

  @override
  set remark(String value) {
    _$remarkAtom.reportWrite(value, super.remark, () {
      super.remark = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_AddPurposeStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$isAlertAtom = Atom(name: '_AddPurposeStore.isAlert');

  @override
  bool get isAlert {
    _$isAlertAtom.reportRead();
    return super.isAlert;
  }

  @override
  set isAlert(bool value) {
    _$isAlertAtom.reportWrite(value, super.isAlert, () {
      super.isAlert = value;
    });
  }

  final _$_AddPurposeStoreActionController =
      ActionController(name: '_AddPurposeStore');

  @override
  dynamic setPurpose(String purpo) {
    final _$actionInfo = _$_AddPurposeStoreActionController.startAction(
        name: '_AddPurposeStore.setPurpose');
    try {
      return super.setPurpose(purpo);
    } finally {
      _$_AddPurposeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPurposeHeading(String purposeHea) {
    final _$actionInfo = _$_AddPurposeStoreActionController.startAction(
        name: '_AddPurposeStore.setPurposeHeading');
    try {
      return super.setPurposeHeading(purposeHea);
    } finally {
      _$_AddPurposeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDesc(String des) {
    final _$actionInfo = _$_AddPurposeStoreActionController.startAction(
        name: '_AddPurposeStore.setDesc');
    try {
      return super.setDesc(des);
    } finally {
      _$_AddPurposeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setRemark(String rema) {
    final _$actionInfo = _$_AddPurposeStoreActionController.startAction(
        name: '_AddPurposeStore.setRemark');
    try {
      return super.setRemark(rema);
    } finally {
      _$_AddPurposeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic buttonClick(PurposeResponseModel purposeResponseModel) {
    final _$actionInfo = _$_AddPurposeStoreActionController.startAction(
        name: '_AddPurposeStore.buttonClick');
    try {
      return super.buttonClick(purposeResponseModel);
    } finally {
      _$_AddPurposeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fetchFromLocal() {
    final _$actionInfo = _$_AddPurposeStoreActionController.startAction(
        name: '_AddPurposeStore.fetchFromLocal');
    try {
      return super.fetchFromLocal();
    } finally {
      _$_AddPurposeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validatePurpose(String text) {
    final _$actionInfo = _$_AddPurposeStoreActionController.startAction(
        name: '_AddPurposeStore.validatePurpose');
    try {
      return super.validatePurpose(text);
    } finally {
      _$_AddPurposeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validatePurposeHeading(String text) {
    final _$actionInfo = _$_AddPurposeStoreActionController.startAction(
        name: '_AddPurposeStore.validatePurposeHeading');
    try {
      return super.validatePurposeHeading(text);
    } finally {
      _$_AddPurposeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validateDesc(String desc) {
    final _$actionInfo = _$_AddPurposeStoreActionController.startAction(
        name: '_AddPurposeStore.validateDesc');
    try {
      return super.validateDesc(desc);
    } finally {
      _$_AddPurposeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validateRemark(String remark) {
    final _$actionInfo = _$_AddPurposeStoreActionController.startAction(
        name: '_AddPurposeStore.validateRemark');
    try {
      return super.validateRemark(remark);
    } finally {
      _$_AddPurposeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
purpose: ${purpose},
purposeHeading: ${purposeHeading},
desc: ${desc},
remark: ${remark},
isLoading: ${isLoading},
isAlert: ${isAlert}
    ''';
  }
}

mixin _$FormErrorState on _FormErrorState, Store {
  Computed<bool> _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_FormErrorState.hasErrors'))
          .value;

  final _$purposErrorAtom = Atom(name: '_FormErrorState.purposError');

  @override
  String get purposError {
    _$purposErrorAtom.reportRead();
    return super.purposError;
  }

  @override
  set purposError(String value) {
    _$purposErrorAtom.reportWrite(value, super.purposError, () {
      super.purposError = value;
    });
  }

  final _$purposeHeadingErrorAtom =
      Atom(name: '_FormErrorState.purposeHeadingError');

  @override
  String get purposeHeadingError {
    _$purposeHeadingErrorAtom.reportRead();
    return super.purposeHeadingError;
  }

  @override
  set purposeHeadingError(String value) {
    _$purposeHeadingErrorAtom.reportWrite(value, super.purposeHeadingError, () {
      super.purposeHeadingError = value;
    });
  }

  final _$descErrorAtom = Atom(name: '_FormErrorState.descError');

  @override
  String get descError {
    _$descErrorAtom.reportRead();
    return super.descError;
  }

  @override
  set descError(String value) {
    _$descErrorAtom.reportWrite(value, super.descError, () {
      super.descError = value;
    });
  }

  final _$remarkErrorAtom = Atom(name: '_FormErrorState.remarkError');

  @override
  String get remarkError {
    _$remarkErrorAtom.reportRead();
    return super.remarkError;
  }

  @override
  set remarkError(String value) {
    _$remarkErrorAtom.reportWrite(value, super.remarkError, () {
      super.remarkError = value;
    });
  }

  @override
  String toString() {
    return '''
purposError: ${purposError},
purposeHeadingError: ${purposeHeadingError},
descError: ${descError},
remarkError: ${remarkError},
hasErrors: ${hasErrors}
    ''';
  }
}
