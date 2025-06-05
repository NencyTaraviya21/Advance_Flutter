import 'dart:io';

class Student{
  int ? marks;
  int ? number;
  String ? name;

  void displayStudentDetails(){
    name=stdin.readLineSync()!;
    marks=int.parse(stdin.readLineSync()!);
    number=int.parse(stdin.readLineSync()!);

    print(name);
    print(marks);
    print(number);
  }

}