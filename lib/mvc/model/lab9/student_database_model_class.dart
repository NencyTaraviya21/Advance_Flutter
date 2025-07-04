import 'package:adv_flutter/utils/strings.dart';

class StudentModelClass {
  String? _studentName;

  String? get studentName => _studentName;

  set studentName(String? value) {
    _studentName = value;
  }

  int? _studentId;

  int? get studentId => _studentId;

  set studentId(int? value) {
    _studentId = value;
  }

  StudentModelClass({String? studentName, int? studentId})
      : _studentId = studentId,
        _studentName = studentName;

  Map<String,dynamic> toMap(){
    return {COL_STUDENT_NAME:studentName, COL_STUDENT_ID: studentId};
  }

  StudentModelClass fromMap(Map<String,dynamic> studentData){
    return StudentModelClass(studentName: studentName, studentId: studentId);
  }

}
