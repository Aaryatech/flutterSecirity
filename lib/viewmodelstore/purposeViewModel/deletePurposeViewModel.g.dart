// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deletePurposeViewModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DeletePurposeViewModel on _DeletePurposeViewModel, Store {
  final _$modelAtom = Atom(name: '_DeletePurposeViewModel.model');

  @override
  List<PurposeResponseModel> get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(List<PurposeResponseModel> value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_DeletePurposeViewModel.isLoading');

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

  final _$_DeletePurposeViewModelActionController =
      ActionController(name: '_DeletePurposeViewModel');

  @override
  dynamic deletePurpose(int purposeId) {
    final _$actionInfo = _$_DeletePurposeViewModelActionController.startAction(
        name: '_DeletePurposeViewModel.deletePurpose');
    try {
      return super.deletePurpose(purposeId);
    } finally {
      _$_DeletePurposeViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fetchFromLocal() {
    final _$actionInfo = _$_DeletePurposeViewModelActionController.startAction(
        name: '_DeletePurposeViewModel.fetchFromLocal');
    try {
      return super.fetchFromLocal();
    } finally {
      _$_DeletePurposeViewModelActionController.endAction(_$actionInfo);
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
