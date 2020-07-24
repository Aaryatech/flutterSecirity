import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobx/mobx.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';
import 'package:security/ui/purpose_master_ui.dart';
import 'package:security/viewmodelstore/purposeViewModel/addPurposeViewModel.dart';
import 'package:security/viewmodelstore/purposeViewModel/deletePurposeViewModel.dart';
import 'package:security/viewmodelstore/purposeViewModel/purposeViewModel.dart';

PurposeViewModel purposeViewModelStore = PurposeViewModel();
DeletePurposeViewModel deletePurposeViewModel = DeletePurposeViewModel();

class PurposeUi extends StatefulWidget {
  @override
  _PurposeUiState createState() => _PurposeUiState();
}

class _PurposeUiState extends State<PurposeUi> {
  Future<PurposeResponseModel> purposeList;
  @override
  void initState() {
    purposeViewModelStore.insertFromLocal();
    //  purposeList=purposeViewModelStore.fetchFromLocal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Purpose List'),
        ),
        body: Observer(
          builder: (_) {
            return purposeViewModelStore.isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: purposeViewModelStore.model.length,
                    itemBuilder: (context, index) {
                      print(purposeViewModelStore.model.toString());
                      return Card(
                        child: ListTile(
                          title: Text(
                              '${purposeViewModelStore.model[index].purposeHeading}',
                              style: GoogleFonts.oswald(
                                      textStyle:
                                          Theme.of(context).textTheme.headline6)
                                  .copyWith(color: Colors.black)),
                          subtitle: Text(
                              '${purposeViewModelStore.model[index].description}'),
                          trailing:

                              //This menu button widget updates a _selection field (of type WhyFarther,
//not shown here).
                              PopupMenuButton<String>(
                            onSelected: (String result) {
                              print(result);

                              if (result == "2") {
                                //  showAlertDialog(BuildContext context) {

                                // set up the buttons
                                Widget cancelButton = FlatButton(
                                  child: Text("Cancel"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                );
                                Widget continueButton = FlatButton(
                                  child: Text("Continue"),
                                  onPressed: () {
                                    Observer(builder: (_) {
                                      return deletePurposeViewModel.isLoading
                                          ? Center(
                                              child:
                                                  CircularProgressIndicator(),
                                            )
                                          : Container();
                                    });

                                    deletePurposeViewModel.deletePurpose(
                                        purposeViewModelStore
                                            .model[index].purposeId);

                                    purposeViewModelStore.fetchFromLocal();
                                    Navigator.pop(context);
                                  },
                                );

                                // set up the AlertDialog
                                AlertDialog alert = AlertDialog(
                                  title: Text("AlertDialog"),
                                  content:
                                      Text("Would you like to delete purpose?"),
                                  actions: [
                                    cancelButton,
                                    continueButton,
                                  ],
                                );

                                // show the dialog
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return alert;
                                  },
                                );
//}

                              } else if (result == "1") {
                                Navigator.of(context).pop();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        new VisitorMaster(
                                          purposeId: purposeViewModelStore
                                              .model[index].purposeId,
                                          desc: purposeViewModelStore
                                              .model[index].description,
                                          heading: purposeViewModelStore
                                              .model[index].purposeHeading,
                                          remark: purposeViewModelStore
                                              .model[index].remark,
                                          purpose: purposeViewModelStore
                                              .model[index].exVar1,
                                              isEdit:true
                                        )));
                              }
                            },
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry<String>>[
                              const PopupMenuItem<String>(
                                value: "1",
                                child: Text('Edit'),
                              ),
                              const PopupMenuItem<String>(
                                value: "2",
                                child: Text('Delete'),
                              ),
                            ],
                          ),
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
