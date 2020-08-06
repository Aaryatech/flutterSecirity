import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:security/network/repository/authenticationRepo.dart';
import 'package:security/ui/authUi.dart';
import 'package:security/ui/purpose_master_ui.dart';
import 'package:security/ui/purpose_ui.dart';
import 'package:security/ui/visitor_master_add.dart';
import 'package:security/ui/visitor_master_list.dart';
import 'package:security/viewmodelstore/authviewmodel/authViewModel.dart';
import 'package:security/viewmodelstore/dashboardViewModel/dashboardViewModel.dart';

import 'common/models/auth/authResponseModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  
  @override
  Widget build(BuildContext context) {

     AuthenticationRepo().authenticateUser('1100').then((value) => print);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey[50] : null,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    
      home: 
      //AuthUi(),
      //VisitorMaster(),
    // PurposeUi(),
     HomePage(),
    //  routes: <String,WidgetBuilder>{
    //    "/a":(BuildContext context)=> new PurposeUi()},

    );
  }
}

final DashboardViewModel dashboardViewModel = DashboardViewModel();
//AuthViewModel authViewModelStore = AuthViewModel();
class HomePage extends StatefulWidget {
@override
  _HomePageState createState() => _HomePageState();
}

  class _HomePageState extends State<HomePage> {

 @override
  void initState() {
AuthResponseModel authList;

    var dt = DateTime.now();
    var newFormat = DateFormat("yyyy-MM-dd");
    String updatedDt = newFormat.format(dt);
    print(updatedDt); // 20-04-03

    dashboardViewModel.insertFromLocal(updatedDt,updatedDt,269);
   //authList= authViewModelStore.fetchFromLocal();
    super.initState();
  }

  

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title :new Text("Drawer App"),
        elevation : defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(children: <Widget>[
          new UserAccountsDrawerHeader(accountName: new Text('Monika kawale'),
           accountEmail: new Text('monikakawale26@gmail.com'),
           currentAccountPicture: new CircleAvatar(
             backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.deepPurple : Colors.white,
             child: new Text("M"),
           ),),

             new ListTile(
            title:new Text("Add purpose"),
            trailing :new Icon(Icons.arrow_right),
            onTap: () { 
               Navigator.of(context).pop();
               Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>new VisitorMaster()));
              },
          ),

          new ListTile(
            title:new Text("Purpose List"),
            trailing :new Icon(Icons.arrow_right),
            onTap: () { 
               Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>new PurposeUi()));
              },
          ),

         
 new ListTile(
            title:new Text("Visitor Gatepass Master"),
            trailing :new Icon(Icons.arrow_right),
            onTap: () { 
               Navigator.of(context).pop();
               Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>new VisitorMasterUi()));
              },
          ),

new ListTile(
            title:new Text("Visitor Gatepass Master List"),
            trailing :new Icon(Icons.arrow_right),
            onTap: () { 
               Navigator.of(context).pop();
               Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>new VisitorMasterList()));
              },
          ),


          new Divider(),
           new ListTile(
            title:new Text("Logout"),
            trailing :new Icon(Icons.arrow_right),
             onTap: () { 
               Navigator.of(context).pop();
               Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>new AuthUi()));
              },
          ),

        ],
        ),
        ),
  
      body: SingleChildScrollView(
              child: new Column(
    
        children: <Widget>[

//Container(
   //color: Colors.pink,
   // height: 50.0,
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                 Container(
          color: Colors.pink[800],
          width: double.maxFinite,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            "Visitor Count : ",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
  
                              ],
  
                            ),
//),

              new Row(
                  children: <Widget>[
                              new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Total Visitors',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                             // Text('${dashboardViewModel.model.visAndMaintGatepassModel.visitor_total}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),


new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Currently Visitors in Company',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,),
              textAlign: TextAlign.center,),
                              
                           //   Text('${dashboardViewModel.model.visAndMaintGatepassModel.visitor_in_comp}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),



                      
                    ),
                  ),


                  ],
               ),
         

          new Row(
                  children: <Widget>[
                              new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Visitors Metting Completed',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                           //   Text('${dashboardViewModel.model.visAndMaintGatepassModel.emp_visitor_completed}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),


new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Visitors Rejected',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                             // Text('${dashboardViewModel.model.visAndMaintGatepassModel.visitor_rejected}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),



                      
                    ),
                  ),


                  ],
               ),



                 new Row(
                  children: <Widget>[
                              new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Visitors Standing at Gate',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                             // Text('${dashboardViewModel.model.visAndMaintGatepassModel.visitor_pending}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),


new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Current Metting Going on(Approve)',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                             // Text('${dashboardViewModel.model.visAndMaintGatepassModel.visitor_approved}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),



                      
                    ),
                  ),


                  ],
               ),


                Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                 Container(
          color: Colors.pink[800],
          width: double.maxFinite,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            "Employee Wise Visitor Count :",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
  
                              ],
  
                            ),


 new Row(
                  children: <Widget>[
                              new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Employee Total Visitor',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                            //  Text('${dashboardViewModel.model.visAndMaintGatepassModel.emp_visitor_total}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),


new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Current Employee Metting Going on(Approve)',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                             // Text('${dashboardViewModel.model.visAndMaintGatepassModel.emp_visitor_approved}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),



                      
                    ),
                  ),


                  ],
               ),


 new Row(
                  children: <Widget>[
                              new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Employee Wise Rejected',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                             // Text('${dashboardViewModel.model.visAndMaintGatepassModel.emp_visitor_rejected}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),


new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Employee Wise Visitor Standing at Gate',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                             // Text('${dashboardViewModel.model.visAndMaintGatepassModel.emp_visitor_pending}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),



                      
                    ),
                  ),


                  ],
               ),


 new Row(
                  children: <Widget>[
                              new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Employee Wise Meeting Completed',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                             // Text('${dashboardViewModel.model.visAndMaintGatepassModel.emp_visitor_completed}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),


                  ],
               ),



  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                 Container(
          color: Colors.pink[800],
          width: double.maxFinite,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            "Maintenance Visitors Count :",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
  
                              ],
  
                            ),


 new Row(
                  children: <Widget>[
                              new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Maintenance Visitor Pending',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                             // Text('${dashboardViewModel.model.visAndMaintGatepassModel.maint_pending}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),


new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Maintenance visitors Approve',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                             // Text('${dashboardViewModel.model.visAndMaintGatepassModel.maint_pending}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),



                      
                    ),
                  ),


                  ],
               ),


 new Row(
                  children: <Widget>[
                              new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Maintenance visitors Rejected',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                             // Text('${dashboardViewModel.model.visAndMaintGatepassModel.maint_rejected}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),


new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Maintenance visitors Work Completed',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                            //  Text('${dashboardViewModel.model.visAndMaintGatepassModel.maint_completed}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),


                  ],
               ),


 new Row(
                  children: <Widget>[
                              new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Maintenance visitors Total',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                            //  Text('${dashboardViewModel.model.visAndMaintGatepassModel.maint_total}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                               Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),


                  ],
               ),


Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                 Container(
          color: Colors.pink[800],
          width: double.maxFinite,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            "Employee Gate Pass Count :",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
  
                              ],
  
                            ),


 new Row(
                  children: <Widget>[
                              new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Total Temp GP',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                              Text('ff',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),


new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Total Day GP',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                              Text('ff',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),



                      
                    ),
                  ),


                  ],
               ),


 new Row(
                  children: <Widget>[
                              new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('No Of Employee Outside Factory',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                              Text('ff',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),
                  ],
 ),


Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                 Container(
          color: Colors.pink[800],
          width: double.maxFinite,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            "Material Inward Count :",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
  
                              ],
  
                            ),


 new Row(
                  children: <Widget>[
                              new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Total No of Inward',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                              Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),


new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Total No of Parcel ',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                              Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),
                    ),
                  ),
                  ],
               ),

Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                 Container(
          color: Colors.pink[800],
          width: double.maxFinite,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            "Employee Wise Material Gate Pass Count :",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
  
                              ],
  
                            ),


 new Row(
                  children: <Widget>[
                              new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Employee Wise Total Pending',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                              Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),


new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Employee Wise Total Approve',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                              Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),



                      
                    ),
                  ),


                  ],
               ),


 new Row(
                  children: <Widget>[
                              new Padding(
                      padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.deepPurple,
                      child: Row(
                         children: <Widget>[
                                             new Container(
                          width: 170.0,
                          height: 170.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Employee Wise Total Rejected',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,), textAlign: TextAlign.center,),
                              
                              Text('0',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                         ],
                      ),

                    ),
                  ),
                  ],
 ),



         
        ],
    ),
      ),
    );
  }
}

