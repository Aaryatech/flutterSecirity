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
                        child: ListTile(
                          title: Text(
                              '${visitorViewModelStore.model[index].personName}',
                              style: GoogleFonts.oswald(
                                      textStyle:
                                          Theme.of(context).textTheme.headline6)
                                  .copyWith(color: Colors.black)),
                          subtitle: Text(
                              '${visitorViewModelStore.model[index].purposeRemark}'),
                       
                        ),
                      );
                    },
                  );
          },
        ),
      ),
    );
  }
}