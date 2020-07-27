import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security/common/models/auth/visitorResponseModel.dart';
import 'package:security/viewmodelstore/visitorViewModel/visitorViewModel.dart';

VisitorViewModel visitorViewModelStore = VisitorViewModel();

class VisitorMasterList extends StatefulWidget {
  @override
  _VisitorMasterListState createState() => _VisitorMasterListState();
}

class _VisitorMasterListState extends State<VisitorMasterList> {

Future<VisitorResponseModel> visitorList;
  @override
  void initState() {
    visitorViewModelStore.insertFromLocal();
    //  purposeList=purposeViewModelStore.fetchFromLocal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Visitor List'),
        ),
        body: Observer(
          builder: (_) {
            return visitorViewModelStore.isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: visitorViewModelStore.model.length,
                    itemBuilder: (context, index) {
                      print(visitorViewModelStore.model.toString());
                      return Card(

child: new Column(
                      children: <Widget>[
                      //  new Image.network('https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg'),
                        new Padding(
                          padding: new EdgeInsets.all(7.0),
                          child: new Row(
                            children: <Widget>[
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                              // child: new Icon(Icons.thumb_up),
                              child: new Text('Person Name : ',style: Theme.of(context).textTheme.headline6.copyWith(color:Colors.black)),
                             ),
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Text( '${visitorViewModelStore.model[index].personName}',style: new TextStyle(fontSize: 18.0),),
                             ),
                             
                          

                            ],
                          ),
                        ),

                         new Padding(
                          padding: new EdgeInsets.all(7.0),
                          child: new Row(
                            children: <Widget>[
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               //child: new Icon(Icons.phone),
                               child: new Image.asset('images/company.png'),
                               
                             // child: new Text('Person Name : ',style: Theme.of(context).textTheme.headline6.copyWith(color:Colors.black)),
                             ),
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Text( '${visitorViewModelStore.model[index].personCompany}',style: new TextStyle(fontSize: 18.0),),
                             ),
                             
                          

                            ],
                          ),
                        ),
  

   new Padding(
                          padding: new EdgeInsets.all(7.0),
                          child: new Row(
                            children: <Widget>[
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Icon(Icons.phone),
                             // child: new Text('Person Name : ',style: Theme.of(context).textTheme.headline6.copyWith(color:Colors.black)),
                             ),
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Text( '${visitorViewModelStore.model[index].mobileNo}',style: new TextStyle(fontSize: 18.0),),
                             ),
                             
                          

                            ],
                          ),
                        ),
  

   new Padding(
                          padding: new EdgeInsets.all(7.0),
                          child: new Row(
                            children: <Widget>[
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               //child: new Icon(Icons.phone),
                               child: ImageIcon(
     AssetImage("images/remark.png"),
     color: Color(0xFF3A5A98),
     
),
                               // child: new Image.asset('images/remark.png'),
                             // child: new Text('Person Name : ',style: Theme.of(context).textTheme.headline6.copyWith(color:Colors.black)),
                             ),
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Text( '${visitorViewModelStore.model[index].purposeRemark}',style: new TextStyle(fontSize: 18.0),),
                             ),
                             
                          

                            ],
                          ),
                        ),
  

   new Padding(
                          padding: new EdgeInsets.all(7.0),
                          child: new Row(
                            children: <Widget>[
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                              // child: new Icon(Icons.verified_user),
                               child: new Image.asset('images/person.png'),
                             // child: new Text('Person Name : ',style: Theme.of(context).textTheme.headline6.copyWith(color:Colors.black)),
                             ),
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Text( '${visitorViewModelStore.model[index].personToMeet}',style: new TextStyle(fontSize: 18.0),),
                             ),
                             
                          

                            ],
                          ),
                        ),
  
            

                      ],
                    ),


                        // child: ListTile(
                        //   title: Text(
                        //       '${visitorViewModelStore.model[index].personName}',
                        //       style: GoogleFonts.oswald(
                        //               textStyle:
                        //                   Theme.of(context).textTheme.headline6)
                        //           .copyWith(color: Colors.black)),
                        //   subtitle: Text(
                        //       '${visitorViewModelStore.model[index].purposeRemark}'),
                       
                        // ),
                      );
                    },
                  );
          },
        ),
      ),
    );
  }
}