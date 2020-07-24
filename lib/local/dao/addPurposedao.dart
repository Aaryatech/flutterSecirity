
import 'package:security/common/models/auth/purposeResponseModel.dart';
import 'package:security/local/dbclient.dart';
import 'package:sqflite/sqflite.dart';

class AddPurDao{

Database _database;

AddPurDao(){
_getDbInstance();
}

void _getDbInstance() async => _database = await DbConfig.getInstance();


Future<int> insertPurpose(PurposeResponseModel model)async{
 int result = await _database.insert(PurposeResponseModel.tableName,model.toJson(),conflictAlgorithm: ConflictAlgorithm.replace);
 return result;
}


Future<PurposeResponseModel> getPurpose() async {
 
  final List<Map<String, dynamic>> maps = await _database.query(PurposeResponseModel.tableName);

  // Convert the List<Map<String, dynamic> into a List<Dog>.
  return List.generate(maps.length, (i) {
    return PurposeResponseModel.fromJson(maps[i]);
  }).last;

}


}