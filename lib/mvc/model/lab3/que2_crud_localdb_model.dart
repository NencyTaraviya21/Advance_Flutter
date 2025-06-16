// import 'package:adv_flutter/import_export/import_export.dart';
//
//
// class DatabaseService{
//   Database? _database;
//
//   void initDatabase()async{
//     final dbpath = await getDatabasesPath();
//     _database = await openDatabase(path.join(dbpath,"person_db"),
//       version: 0,
//       onCreate: (db,version) async{
//         await db.execute("CREATE TABLE person (id PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL");
//       }
//     );
//   }
//
// }