import 'dart:io';

class Student{
  int ? marks;
  int ? number;
  String ? name;

  Student(int marks, int number, String name){
    this.marks=marks;
    this.number=number;
    this.name=name;

  }

  void takeStudentDetails(String name, int marks, int number){

  }
  void displayStudentDetails(){
    name=stdin.readLineSync()!;
    marks=int.parse(stdin.readLineSync()!);
    number=int.parse(stdin.readLineSync()!);

    print(name);
    print(marks);
    print(number);
  }

}