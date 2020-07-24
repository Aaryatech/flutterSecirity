import 'package:security/common/models/auth/authResponseModel.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';
import 'package:security/local/dbclient.dart';
import 'package:sqflite/sqflite.dart';

class DeletePurDao {
  Database _database;

  DeletePurDao() {
    _getDbInstance();
  }

  void _getDbInstance() async => _database = await DbConfig.getInstance();

  Future<int> deletePurposeDetails(int purposeId) async {
    int result = await _database.delete(PurposeResponseModel.tableName,
        where: '${PurposeResponseModel.columnPurposeId} = ?',
        whereArgs: [purposeId]);
    return result;
  }

  Future<List<PurposeResponseModel>> getPurpose() async {
    final List<Map<String, dynamic>> maps =
        await _database.query(PurposeResponseModel.tableName);

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return PurposeResponseModel.fromJson(maps[i]);
    });
  }
}
