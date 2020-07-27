import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';
import 'package:security/viewmodelstore/purposeViewModel/addPurposeViewModel.dart';

import 'purpose_ui.dart';

final AddPurposeStore addPurposeStore = AddPurposeStore();

class VisitorMaster extends StatefulWidget {
  VisitorMaster({this.purposeId,this.desc, this.heading, this.remark, this.purpose,this.isEdit});
  final int purposeId;
  final String desc;
  final String heading;
  final String remark;
  final String purpose;
  final bool isEdit;
  @override
  _VisitorMasterState createState() => _VisitorMasterState();
}

class _VisitorMasterState extends State<VisitorMaster> {
  final _formKey = GlobalKey<FormState>();
  String dropdownValue;
  
  String purHeading, purDesc, purRemark;

  var _currencies = [
    "Visitor Purpose",
    "Maintenance Purpose",
    "Employee Purpose"
  ];

  @override
  void initState() {
    super.initState();
    addPurposeStore.setupValidations();
    dropdownValue=widget.purpose ?? "";
    myController.text = widget.desc ?? "";
    myController1.text = widget.heading ?? "";
    myController2.text = widget.remark ?? "";
    myController3.text = widget.purpose ?? "";
  //  myController4.text = widget.isEdit ?? "";
  }

  @override
  void dispose() {
    addPurposeStore.dispose();
    super.dispose();
  }

  final myController = TextEditingController();
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
//  final myController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add Purpose'),
        ),
        body: Container(
          // height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),

                    Observer(builder: (_) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FormField<String>(
                          builder: (FormFieldState<String> state) {
                            return InputDecorator(
                              decoration: InputDecoration(
                                  //labelStyle: textStyle,
                                  errorStyle: TextStyle(
                                      color: Colors.deepPurple, fontSize: 16.0),
                                  hintText: 'Please select purpose',
                                  errorText: addPurposeStore.error.purposError,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0))),
                              isEmpty: dropdownValue == '',
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdownValue,
                                  hint: Text("Please select purpose"),
                                  isDense: true,
                                  onChanged: (String newValue) {
                                    setState(() {
                                      dropdownValue = newValue;
                                      state.didChange(newValue);
                                      addPurposeStore.setPurpose(newValue);
                                    });
                                  },
                                  items: _currencies.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }),


                    Observer(builder: (_) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          controller: myController1,
                          onChanged: (value) {
                            // purHeading=value;
                            addPurposeStore.setPurposeHeading(value);
                          },
                          decoration: InputDecoration(
                            labelText: 'Purpose Heading',
                            hintText: 'Purpose Heading',
                            errorText: addPurposeStore.error.purposeHeadingError,

                            // icon: Icon(Icons.person,color:Colors.blue),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.deepPurple,
                              ),
                            ),
                            //   border:InputBorder.none,
                          ),
                        ),
                      );
                    }),

                    Observer(builder: (_) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          // maxLength: 10,
                          keyboardType: TextInputType.text,
                          controller: myController,
                          onChanged: (value) {
                            // purDesc=value;
                            addPurposeStore.setDesc(value);
                          },
                          decoration: InputDecoration(
                            labelText: 'Description',
                            hintText: 'Description',
                            errorText: addPurposeStore.error.descError,
                            // icon: Icon(Icons.call,color:Colors.blue),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.deepPurple,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),

                    Observer(builder: (_) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          controller: myController2,
                          //maxLength: 2,
                          onChanged: (value) {
                            // purRemark=value;
                            addPurposeStore.setRemark(value);
                          },
                          decoration: InputDecoration(
                            labelText: 'Remark',
                            hintText: 'Remark',
                            errorText: addPurposeStore.error.remarkError,
                            //icon: Icon(Icons.email,color:Colors.blue),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.deepPurple,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),

                    SizedBox(
                      height: 20,
                    ),

                    Observer(builder: (_) {
                      return addPurposeStore.isLoading
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : Container();
                    }),
                    SizedBox(
                      height: 20,
                    ),

                    Observer(builder: (_) {
                      return Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 0.0),
                        child: Container(
                          width: 200.0,
                          height: 50.0,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(color: Colors.deepPurple)),
                            onPressed: () {
                              addPurposeStore.validateAll();
                              if (addPurposeStore.error.hasErrors) {
                                print('data not valid');
                              } else {
                                addPurposeStore.buttonClick();

                                if(addPurposeStore.isAlert)
                                {

 Widget okButton = FlatButton(  
    child: Text("OK"),  
    onPressed: () {  
      //Navigator.of(context).pop();  
       Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>new PurposeUi()));
    },  
  );  
  
  // Create AlertDialog  
  AlertDialog alert = AlertDialog(  
    title: Text("AlertDialog"),  
    content: Text("Successfully Submit Purpose"),  
    actions: [  
      okButton,  
    ],  
  );  
  
  // show the dialog  
  showDialog(  
    context: context,  
    builder: (BuildContext context) {  
      return alert;  
    },  
  );  


                                }
                              
                          


                              }
                            },
                            color: Colors.deepPurple,
                            textColor: Colors.white,
                            child: Text("Submit".toUpperCase(),
                                style: TextStyle(fontSize: 14)),
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
