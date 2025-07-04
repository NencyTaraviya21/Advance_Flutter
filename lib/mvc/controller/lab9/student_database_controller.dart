import 'package:adv_flutter/import_export/import_export.dart';

class StudentController extends GetxController{
 RxList<StudentModelClass> studentList = <StudentModelClass>[].obs;
 TextEditingController nameController = TextEditingController();

 StudentRepo stuRepo = StudentRepo(MyDatabase().db);

 @override
 void onInit(){
  super.onInit();
  stuRepo.getStudent().then((value){
   studentList.addAll(value);
  }
  );
}

Future<void> addStudent({name}) async{
  stuRepo.addStudent(TABLE_STUDENT, StudentModelClass().fromMap(name));
  nameController.clear();
}

Future<void> getStudentList(){
  stuRepo.getStudent();
}

}