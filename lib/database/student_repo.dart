import 'package:adv_flutter/import_export/import_export.dart';

class StudentRepo {
  Database ? databaseService;

  StudentRepo(this.databaseService);

  Future<void> addStudent(String tblName, StudentModelClass stuMap) async {
    await (databaseService!.database).insert(TABLE_STUDENT, stuMap.toMap());
  }

  Future<List<StudentModelClass>> getStudent() async {
    Database db = await databaseService!.database;
    List<Map<String, Object?>> students = await db.rawQuery(
        "SELECT * FROM $TABLE_STUDENT");
    List<StudentModelClass> studentList = [];
    for (var ele in students) {
      studentList.add(StudentModelClass().fromMap(ele));
    }
    return studentList;
  }
}

