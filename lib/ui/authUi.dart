import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:security/viewmodelstore/authviewmodel/authViewModel.dart';

AuthViewModel authViewModelStore = AuthViewModel();

class AuthUi extends StatefulWidget {
  AuthUi({Key key}) : super(key: key);

  @override
  _AuthUiState createState() => _AuthUiState();
}

class _AuthUiState extends State<AuthUi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Authentication'),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Observer(builder: (_) {
                  return TextFormField(
                    autofocus: true,
                    maxLength: 4,
                    onChanged: (str) {
                      authViewModelStore.setDscNumber(str);
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      helperText: 'Security number',
                      hintText: 'DSC Number',
                    ),
                  );
                }),
                Observer(builder: (_) {
                  return authViewModelStore.isLoading
                      ? LinearProgressIndicator()
                      : Container();
                 } ),
                SizedBox(
                  height: 24,
                ),
                RaisedButton(
                  onPressed: () {
                    authViewModelStore.authUser(authViewModelStore.dscNumber);
                  },
                  child: Text('Submit'),
                ),
                Observer(builder: (_) {
                  return Text('${authViewModelStore.model!=null? authViewModelStore.model.companyId:0}');
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
