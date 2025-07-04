import 'package:adv_flutter/import_export/import_export.dart';

class MyDatabase {
  Database? db;

  Future<void> initDatabase() {
    return openDatabase("${getDatabasesPath()}+$DB_NAME", version: 1,
        onCreate: (db, version) {
      db.execute(
          'CREATE TABLE $TABLE_STUDENT ($COL_STUDENT_ID INTEGER PRIMARY KEY AUTOINCREMENT, $COL_STUDENT_NAME TEXT)');
    });
  }
}
