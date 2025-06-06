class StudentSignUpFormModel{
  bool studentName(String name){
    if(!RegExp(r'^[a-z,A-z]+$').hasMatch(name)){
      return false;
    }
    return true;
  }

  bool studentEmail(String email){
    if(!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)){
      return false;
    }
    return true;
  }
}