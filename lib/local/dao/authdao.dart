import 'package:security/common/models/auth/authResponseModel.dart';
import 'package:security/local/dbclient.dart';
import 'package:sqflite/sqflite.dart';

class AuthDao{

Database _database;

AuthDao(){
_getDbInstance();
}

void _getDbInstance() async => _database = await DbConfig.getInstance();


Future<int> insertAuthDetails(AuthResponseModel model)async{
 int result = await _database.insert(AuthResponseModel.tableName,model.toJson(),conflictAlgorithm: ConflictAlgorithm.replace);
 return result;
}


Future<AuthResponseModel> getAuthUser() async {
 
  final List<Map<String, dynamic>> maps = await _database.query(AuthResponseModel.tableName);

  // Convert the List<Map<String, dynamic> into a List<Dog>.
  return List.generate(maps.length, (i) {
    return AuthResponseModel.fromJson(maps[i]);
  }).last;

}


}