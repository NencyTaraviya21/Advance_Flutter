import 'package:adv_flutter/mvc/model/lab2/form_model.dart';

class StudentSignUpController {
  StudentSignUpFormModel _formModel = StudentSignUpFormModel();

  String? validName(String? name) {
    if (name == null || name.isEmpty) {
      return 'Please enter name';
    }
    if (!_formModel.studentName(name)) {
      return 'Please enter name in proper format';
    }
    return null;
  }

  String? validaEmail(String? email){
    if(email==null|| email.isEmpty){
      return 'please enter an email';
    }
    if(!_formModel.studentName(email)){
      return 'Please enter email in proper format';
    }
    return null;
  }
}

