import 'package:adv_flutter/import_export/import_export.dart';

class PersonController{
  List<PersonModel> _person = [];
  List<PersonModel> get person => _person;

  void addPerson(PersonModel person){
    _person.add(person);
  }

  void deletePerson(PersonModel person){
    int index = _person.indexWhere((element)=>element==person);
    _person.removeAt(index);
  }

  void editPerson(PersonModel person, PersonModel newperson){
    int index = _person.indexWhere((element)=>element==person);
    _person[index] = newperson;
  }
  bool isPersonEmpty(){
    return _person.isEmpty;
}
}