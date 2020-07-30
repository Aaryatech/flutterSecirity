// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authViewModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthViewModel on _AuthViewModel, Store {
  final _$dscNumberAtom = Atom(name: '_AuthViewModel.dscNumber');

  @override
  String get dscNumber {
    _$dscNumberAtom.reportRead();
    return super.dscNumber;
  }

  @override
  set dscNumber(String value) {
    _$dscNumberAtom.reportWrite(value, super.dscNumber, () {
      super.dscNumber = value;
    });
  }

  final _$modelAtom = Atom(name: '_AuthViewModel.model');

  @override
  AuthResponseModel get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(AuthResponseModel value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_AuthViewModel.isLoading');

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

  final _$isAlertAtom = Atom(name: '_AuthViewModel.isAlert');

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

  final _$_AuthViewModelActionController =
      ActionController(name: '_AuthViewModel');

  @override
  dynamic authUser(String dscNumber) {
    final _$actionInfo = _$_AuthViewModelActionController.startAction(
        name: '_AuthViewModel.authUser');
    try {
      return super.authUser(dscNumber);
    } finally {
      _$_AuthViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fetchFromLocal() {
    final _$actionInfo = _$_AuthViewModelActionController.startAction(
        name: '_AuthViewModel.fetchFromLocal');
    try {
      return super.fetchFromLocal();
    } finally {
      _$_AuthViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDscNumber(String dsceNumber) {
    final _$actionInfo = _$_AuthViewModelActionController.startAction(
        name: '_AuthViewModel.setDscNumber');
    try {
      return super.setDscNumber(dsceNumber);
    } finally {
      _$_AuthViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validateDsc(String text) {
    final _$actionInfo = _$_AuthViewModelActionController.startAction(
        name: '_AuthViewModel.validateDsc');
    try {
      return super.validateDsc(text);
    } finally {
      _$_AuthViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dscNumber: ${dscNumber},
model: ${model},
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

  final _$dscErrorAtom = Atom(name: '_FormErrorState.dscError');

  @override
  String get dscError {
    _$dscErrorAtom.reportRead();
    return super.dscError;
  }

  @override
  set dscError(String value) {
    _$dscErrorAtom.reportWrite(value, super.dscError, () {
      super.dscError = value;
    });
  }

  @override
  String toString() {
    return '''
dscError: ${dscError},
hasErrors: ${hasErrors}
    ''';
  }
}
