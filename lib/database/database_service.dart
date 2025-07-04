import 'package:adv_flutter/import_export/import_export.dart';

abstract class DatabaseService{
  Future<Database> get database;
}

//used when there are more than 1 database table and wanna access using same class.