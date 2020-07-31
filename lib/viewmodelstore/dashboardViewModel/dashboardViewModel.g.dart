// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboardViewModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DashboardViewModel on _DashboardViewModel, Store {
  final _$isLoadingAtom = Atom(name: '_DashboardViewModel.isLoading');

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

  final _$_DashboardViewModelActionController =
      ActionController(name: '_DashboardViewModel');

  @override
  dynamic insertFromLocal(String fromDate, String toDate, int empId) {
    final _$actionInfo = _$_DashboardViewModelActionController.startAction(
        name: '_DashboardViewModel.insertFromLocal');
    try {
      return super.insertFromLocal(fromDate, toDate, empId);
    } finally {
      _$_DashboardViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fetchFromLocal() {
    final _$actionInfo = _$_DashboardViewModelActionController.startAction(
        name: '_DashboardViewModel.fetchFromLocal');
    try {
      return super.fetchFromLocal();
    } finally {
      _$_DashboardViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
