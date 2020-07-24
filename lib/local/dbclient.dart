

import 'package:security/common/models/auth/authResponseModel.dart';
import 'package:security/common/models/auth/purposeResponseModel.dart';
import 'package:security/common/models/auth/visitorResponseModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DbConfig {
  static Database _db;

  static Future<Database> getInstance() async {
    if (_db == null) {
      _db = await openDatabase('my_db.db', 
      version: 1, 
      onCreate: (Database db, int version) async {

        await db.execute(
          AuthResponseModel.create()
        );

         await db.execute(
          PurposeResponseModel.create()
        );

           await db.execute(
          VisitorResponseModel.create()
        );

      }
      
      );
    }

    return _db;
  }

  static close() async {
    await _db.close();
  }
}