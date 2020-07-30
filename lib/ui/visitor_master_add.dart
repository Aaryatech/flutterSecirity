import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:security/common/models/companyResponseModel.dart';
import 'package:security/viewmodelstore/companyViewModel/companyViewModel.dart';
import 'package:security/viewmodelstore/visitorViewModel/addVisitorViewModel.dart';

CompanyViewModel companyViewModel = CompanyViewModel();
final AddVisitorStore addVisitorStore = AddVisitorStore();
class VisitorMasterUi  extends StatefulWidget {
  @override
  _VisitorMasterUiState createState() => _VisitorMasterUiState();
}

class _VisitorMasterUiState extends State<VisitorMasterUi > {

 final _formKey = GlobalKey<FormState>();
  String dropdownValue;
  CompanyResponseModel dropdownValue1;
  
  String purHeading, purDesc, purRemark;

   String radioButtonItem = 'ONE';
 
  // Group Value for Radio Button.
  int id = 1;

  var _currencies = [
    "Visitor Purpose",
    "Maintenance Purpose",
    "Employee Purpose"
  ];

 List<CompanyResponseModel> _company = [];
 Future<File> file;
  File tempFile;
  String errorMsg ="Error uploading image";
  String base64Image;
   Dio dio=new Dio();
 
   void initState() {
 
     companyViewModel.insertFromLocal();
    _company=companyViewModel.model;
    addVisitorStore.setupValidations();
     
     super.initState();
   }
 

 chooseImage(){
   setState(() {
   var imagePicker=ImagePicker.pickImage(source: ImageSource.gallery);
   if(imagePicker!=null)
   {
     setState(() {
         file=imagePicker;
     });
   
   }
   });

 }

 Widget showImage(){
   return FutureBuilder<File>(
     future: file,builder: (BuildContext context,AsyncSnapshot<File> snapshot){
       if(snapshot.connectionState==ConnectionState.done && null !=snapshot.data)
       {
         tempFile=snapshot.data;
          base64Image = base64Encode(snapshot.data.readAsBytesSync());
         return Flexible(
           child: Image.file(
             snapshot.data,
             fit: BoxFit.fill,
             ),
         
         );
       }else if(null !=snapshot.error)
       {
         return const Text('Error picking image',
         textAlign: TextAlign.center,
         );
       }else{
         return const Text('No image selected',
          textAlign:TextAlign.center,
         );
       }
     },
   );
 }
 
 
   @override
   Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
         appBar: AppBar(
           title: Text('Add Visitor Master'),
         ),
         body: Container(
           // height: MediaQuery.of(context).size.height,
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Form(
               key: _formKey,
               child: SingleChildScrollView(
                 // child: ConstrainedBox(
               // constraints: BoxConstraints(
               //   minHeight: viewportConstraints.maxHeight,
               // ),
                               child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     SizedBox(
                       height: 10,
                     ),
 
                        Observer(builder: (_) {
                       return Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: TextField(
                           keyboardType: TextInputType.text,
                           //controller: myController1,
                           onChanged: (value) {
                           
                            // addPurposeStore.setPurposeHeading(value);
                           },
                           decoration: InputDecoration(
                             labelText: 'Visitor Name',
                             hintText: 'Visitor Name',
                             errorText: addVisitorStore.error.visitorNameError,
 
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
 
                    //  Observer(builder: (_) {
                    //    return Padding(
                    //      padding: const EdgeInsets.all(8.0),
                    //      child: FormField<String>(
                    //        builder: (FormFieldState<String> state) {
                    //          return InputDecorator(
                    //            decoration: InputDecoration(
                    //                errorStyle: TextStyle(
                    //                    color: Colors.deepPurple, fontSize: 16.0),
                    //                hintText: 'Please select Company',
                    //               // errorText: addPurposeStore.error.purposError,
                    //                border: OutlineInputBorder(
                    //                    borderRadius: BorderRadius.circular(25.0))),
                    //            isEmpty: dropdownValue1 == '',
                    //            child: DropdownButtonHideUnderline(
                    //              child: DropdownButton<CompanyResponseModel>(
                    //                value: dropdownValue1,
                    //                hint: Text("Please select Company"),
                    //                isDense: true,
                    //                onChanged: (CompanyResponseModel newValue) {
                    //                  setState(() {
                    //                    dropdownValue1 = newValue;
                    //                    state.didChange(newValue.companyName);
                    //                    //addPurposeStore.setPurpose(newValue);
                    //                  });
                    //                },
                    //                items: _company.map((CompanyResponseModel value) {
                    //                  return DropdownMenuItem<CompanyResponseModel>(
                    //                    value: value,
                    //                    child: Text(value.companyName),
                    //                  );
                    //                }).toList(),
                    //              ),
                    //            ),
                    //          );
                    //        },
                    //      ),
                    //    );
                    //  }),
 

    Observer(builder: (_) {
                       return Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: FormField<String>(
                           builder: (FormFieldState<String> state) {
                             return InputDecorator(
                               decoration: InputDecoration(
                                   errorStyle: TextStyle(
                                       color: Colors.deepPurple, fontSize: 16.0),
                                   hintText: 'Select Company',
                                  errorText: addVisitorStore.error.companyError,
                                   border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(25.0))),
                               isEmpty: dropdownValue == '',
                               child: DropdownButtonHideUnderline(
                                 child: DropdownButton<String>(
                                   value: dropdownValue,
                                   hint: Text("Select Company"),
                                   isDense: true,
                                   onChanged: (String newValue) {
                                     setState(() {
                                       dropdownValue = newValue;
                                       state.didChange(newValue);
                                       //addPurposeStore.setPurpose(newValue);
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
                           keyboardType: TextInputType.number,
                           maxLength: 10,
                           //controller: myController,
                           onChanged: (value) {
                           //  addPurposeStore.setDesc(value);
                           },
                           decoration: InputDecoration(
                             labelText: 'Mob Number',
                             hintText: 'Mob Number',
                           
                           //  errorText: addPurposeStore.error.descError,
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
                           keyboardType: TextInputType.number,
                           maxLength: 2,
                          // controller: myController2,
                           onChanged: (value) {
                          //   addPurposeStore.setRemark(value);
                           },
                           decoration: InputDecoration(
                             labelText: 'No of Person',
                             hintText: 'No of Person',
                           //  errorText: addPurposeStore.error.remarkError,
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
                          // controller: myController2,
                           onChanged: (value) {
                          //   addPurposeStore.setRemark(value);
                           },
                           decoration: InputDecoration(
                             labelText: 'Remark',
                             hintText: 'Remark',
                           //  errorText: addPurposeStore.error.remarkError,
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
                         child: FormField<String>(
                           builder: (FormFieldState<String> state) {
                             return InputDecorator(
                               decoration: InputDecoration(
                                 
                                   errorStyle: TextStyle(
                                       color: Colors.deepPurple, fontSize: 16.0),
                                   hintText: 'Select Purpose',
                                  // errorText: addPurposeStore.error.purposError,
                                   border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(25.0))),
                               isEmpty: dropdownValue == '',
                               child: DropdownButtonHideUnderline(
                                 child: DropdownButton<String>(
                                   value: dropdownValue,
                                   hint: Text("Select Purpose"),
                                   isDense: true,
                                   onChanged: (String newValue) {
                                     setState(() {
                                       dropdownValue = newValue;
                                       state.didChange(newValue);
                                       //addPurposeStore.setPurpose(newValue);
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
                         child: FormField<String>(
                           builder: (FormFieldState<String> state) {
                             return InputDecorator(
                               decoration: InputDecoration(
                                 
                                   errorStyle: TextStyle(
                                       color: Colors.deepPurple, fontSize: 16.0),
                                   hintText: 'Select Person to meet',
                                  // errorText: addPurposeStore.error.purposError,
                                   border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(25.0))),
                               isEmpty: dropdownValue == '',
                               child: DropdownButtonHideUnderline(
                                 child: DropdownButton<String>(
                                   value: dropdownValue,
                                   hint: Text("Select Person to meet"),
                                   isDense: true,
                                   onChanged: (String newValue) {
                                     setState(() {
                                       dropdownValue = newValue;
                                       state.didChange(newValue);
                                       //addPurposeStore.setPurpose(newValue);
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
 
 
                     SizedBox(
                       height: 20,
                     ),

//  Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Column(
//        children: <Widget>[
//          Text(
//       'Hello How are you?',
//       textAlign: TextAlign.center,
//       overflow: TextOverflow.ellipsis,
//       style: TextStyle(fontWeight: FontWeight.bold),
// ),
//        ]
//     ),
//  )
 
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Text("Mobile Submitted")),
               SizedBox(
                  height: 4,
                ),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Row(
  
            mainAxisAlignment: MainAxisAlignment.start,
  
            children: <Widget>[
  
              Radio(
  
                value: 1,
  
                groupValue: id,
  
                onChanged: (val) {
  
                  setState(() {
  
                    radioButtonItem = 'Yes';
  
                    id = 1;
  
                  });
  
                },
  
              ),
  
              Text(
  
                'Yes',
  
                style: new TextStyle(fontSize: 17.0),
  
              ),
  
    SizedBox(
                       width: 60,
                     ),
 
  
              Radio(
  
                value: 2,
  
                groupValue: id,
  
                onChanged: (val) {
  
                  setState(() {
  
                    radioButtonItem = 'No';
  
                    id = 2;
  
                  });
  
                },
  
              ),
  
              Text(
  
                'No',
  
                style: new TextStyle(
  
                  fontSize: 17.0,
  
                ),
  
              ),
  
              
  
  
  
  ],
  
          ),
),

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Row(
  
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
   new Padding(
                               padding: new EdgeInsets.all(7.0),
                               //child: new Icon(Icons.phone),
                               child: IconButton(
              icon: Icon(Icons.camera),
              onPressed: () {
                chooseImage();
               
              },
            ),
                               
                               
                             // child: new Text('Person Name : ',style: Theme.of(context).textTheme.headline6.copyWith(color:Colors.black)),
                             ),
             
    SizedBox(
                       width: 60,
                     ),
                    showImage(),

                    SizedBox(
                       width: 30,
                     ),
  
            
  ],
  
          ),
),

                     
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
                             onPressed: ()async {
                               
                              addVisitorStore.validateAll();
                             if (addVisitorStore.error.hasErrors) {
                               print('data not valid');
                             } else {

                                String fileName = tempFile.path.split("/").last;
                              FormData formData=new FormData.fromMap({
                                "image" :
                                await MultipartFile.fromFile(tempFile.path,filename: fileName,contentType: new MediaType('image','png')),
                                "type":"image/png"

                              });
                              Response response=await dio.post("http://107.180.95.11:8080/SecurityAppApiDemo/photoUpload",data:formData,options: Options(
                                headers:{ 
                                "accept":"*/*",
                                "authorization":"Bearer accresstoken",
                                "content-Type":"multipart\from-data"
                                }
                              ) );
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
 
 