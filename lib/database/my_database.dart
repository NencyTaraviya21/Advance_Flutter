import 'package:adv_flutter/import_export/import_export.dart';

//region STUDENT DB 
class MyDatabase {
  Database? db;

  Future<void> initDatabase() {
    return openDatabase("${getDatabasesPath()}+$DB_STUDENT", version: 1,
        onCreate: (db, version) {
      db.execute(
          'CREATE TABLE $TABLE_STUDENT ($COL_STUDENT_ID INTEGER PRIMARY KEY AUTOINCREMENT, $COL_STUDENT_NAME TEXT)');
    });
  }
}
//endregion

//region CUSTOMER DB
class CustomerDatabase{
  Database? db;

  Future<void> initDatabase(){
    return openDatabase("${getDatabasesPath()}+$DB_CUSTOMER", version: 1,
      onCreate: (db, version) {
      db.execute('CREATE TABLE $TABLE_CUSTOMER ($COL_CUSTOMER_ID INTEGER PRIMARY KEY AUTOINCREMENT, $COL_CUSTOMER_NAME TEXT)');
      },
    );
  }
}
//endregion