// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companyViewModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CompanyViewModel on _CompanyViewModel, Store {
  final _$modelAtom = Atom(name: '_CompanyViewModel.model');

  @override
  List<CompanyResponseModel> get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(List<CompanyResponseModel> value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_CompanyViewModel.isLoading');

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

  final _$_CompanyViewModelActionController =
      ActionController(name: '_CompanyViewModel');

  @override
  dynamic insertFromLocal() {
    final _$actionInfo = _$_CompanyViewModelActionController.startAction(
        name: '_CompanyViewModel.insertFromLocal');
    try {
      return super.insertFromLocal();
    } finally {
      _$_CompanyViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
model: ${model},
isLoading: ${isLoading}
    ''';
  }
}
