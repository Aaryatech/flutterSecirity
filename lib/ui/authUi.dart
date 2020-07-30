import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:security/viewmodelstore/authviewmodel/authViewModel.dart';
import 'package:security/viewmodelstore/authviewmodel/authViewModel.dart';

import '../main.dart';

AuthViewModel authViewModelStore = AuthViewModel();

class AuthUi extends StatefulWidget {
  AuthUi({Key key}) : super(key: key);

  @override
  _AuthUiState createState() => _AuthUiState();
}


class _AuthUiState extends State<AuthUi> {

 @override
  void initState() {
    super.initState();
    authViewModelStore.setupValidations();
   
  }

  @override
  void dispose() {
    authViewModelStore.dispose();
    super.dispose();
  }

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
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 40.0,
                    height: 2.0,
                    color: Colors.black ),
                    onChanged: (str) {
                      authViewModelStore.setDscNumber(str);
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                     // helperText: 'Security number',
                      hintText: 'DSC Number',
                     errorText: authViewModelStore.error.dscError,
                       filled: true,
                       //fillColor: Color(0xFFDBEDFF),
                       enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(10.0)),
                       borderSide: BorderSide(color: Colors.grey),
                       ),

                        focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.grey),
                        ),

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
                Container(
                  height: 60,
                  width: 150,
                                  child: RaisedButton(
                    onPressed: () {
                       authViewModelStore.validateAll();
                              if (authViewModelStore.error.hasErrors) {
                                print('data not valid');
                              } else {
                      authViewModelStore.authUser(authViewModelStore.dscNumber);
                    
                    if(authViewModelStore.isAlert){
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>new MyApp()));
                      } 
                              }
                  },
                    child: Text('Submit', style: TextStyle(fontSize: 20.0, height: 2.0,color: Colors.white ), textAlign: TextAlign.center,),
                    color: Colors.deepPurple,
                    textColor: Colors.white,
                    
                  
                  ),
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
