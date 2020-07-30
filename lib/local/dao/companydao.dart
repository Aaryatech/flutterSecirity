import 'package:security/common/models/auth/authResponseModel.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';
import 'package:security/common/models/companyResponseModel.dart';
import 'package:security/local/dbclient.dart';
import 'package:sqflite/sqflite.dart';

class CompanyDao{

Database _database;

CompanyDao(){
_getDbInstance();
}

void _getDbInstance() async => _database = await DbConfig.getInstance();


Future<List<dynamic>> insertCompany(List<CompanyResponseModel> model)async{
final batch = _database.batch();
//List<dynamic> results;
for(int i=0;i<model.length;i++)
{
 batch.insert(CompanyResponseModel.tableName,model[i].toJson(),conflictAlgorithm: ConflictAlgorithm.replace);
}
 return await batch.commit();
}


Future<List<CompanyResponseModel>> getCompany() async {


  final List<Map<String, dynamic>> maps = await _database.query(CompanyResponseModel.tableName);

  // Convert the List<Map<String, dynamic> into a List<Dog>.
  return List.generate(maps.length, (i) {
    return CompanyResponseModel.fromJson(maps[i]);
  });

}


}