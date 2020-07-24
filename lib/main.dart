import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:security/network/repository/authenticationRepo.dart';
import 'package:security/ui/authUi.dart';
import 'package:security/ui/purpose_master_ui.dart';
import 'package:security/ui/purpose_ui.dart';
import 'package:security/ui/visitor_master_add.dart';
import 'package:security/ui/visitor_master_list.dart';

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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title :new Text("Drawer App"),
        elevation : defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(children: <Widget>[
          new UserAccountsDrawerHeader(accountName: new Text("Monika Kawale"),
           accountEmail: new Text("monikakawale26@gmail.com"),
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
            trailing :new Icon(Icons.arrow_left)
          ),

        ],
        ),
        ),
  
      body: new Container(
        child: new Center(
          child : new Text("Home Page"),
        ),
      
    ),
    );
  }
}

