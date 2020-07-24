// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visitorViewModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VisitorViewModel on _VisitorViewModel, Store {
  final _$modelAtom = Atom(name: '_VisitorViewModel.model');

  @override
  List<VisitorResponseModel> get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(List<VisitorResponseModel> value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_VisitorViewModel.isLoading');

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

  final _$_VisitorViewModelActionController =
      ActionController(name: '_VisitorViewModel');

  @override
  dynamic insertFromLocal() {
    final _$actionInfo = _$_VisitorViewModelActionController.startAction(
        name: '_VisitorViewModel.insertFromLocal');
    try {
      return super.insertFromLocal();
    } finally {
      _$_VisitorViewModelActionController.endAction(_$actionInfo);
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
