// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purposeViewModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PurposeViewModel on _PurposeViewModel, Store {
  final _$modelAtom = Atom(name: '_PurposeViewModel.model');

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

  final _$isLoadingAtom = Atom(name: '_PurposeViewModel.isLoading');

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

  final _$_PurposeViewModelActionController =
      ActionController(name: '_PurposeViewModel');

  @override
  dynamic insertFromLocal() {
    final _$actionInfo = _$_PurposeViewModelActionController.startAction(
        name: '_PurposeViewModel.insertFromLocal');
    try {
      return super.insertFromLocal();
    } finally {
      _$_PurposeViewModelActionController.endAction(_$actionInfo);
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
