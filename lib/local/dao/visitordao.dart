import 'package:security/common/models/auth/authResponseModel.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';
import 'package:security/common/models/auth/visitorResponseModel.dart';
import 'package:security/local/dbclient.dart';
import 'package:sqflite/sqflite.dart';

class VisitorDao{

Database _database;

VisitorDao(){
_getDbInstance();
}

void _getDbInstance() async => _database = await DbConfig.getInstance();


Future<List<dynamic>> insertVisitor(List<VisitorResponseModel> model)async{
final batch = _database.batch();
//List<dynamic> results;
for(int i=0;i<model.length;i++)
{
 batch.insert(VisitorResponseModel.tableName,model[i].toJson(),conflictAlgorithm: ConflictAlgorithm.replace);
}
 return await batch.commit();
}


Future<int> deleteVisitorDetails(int visitorId) async {
    int result = await _database.delete(VisitorResponseModel.tableName,
        where: '${VisitorResponseModel.columnVisitorId} = ?',
        whereArgs: [visitorId]);
    return result;
  }

Future<List<VisitorResponseModel>> getVisitor() async {

  final List<Map<String, dynamic>> maps = await _database.query(VisitorResponseModel.tableName);

  // Convert the List<Map<String, dynamic> into a List<Dog>.
  return List.generate(maps.length, (i) {
    return VisitorResponseModel.fromJson(maps[i]);
  });

}


}