import 'package:adv_flutter/import_export/import_export.dart';

class Student {
  int? marks;
  int? number;
  String? name;

  void displayStudentDetails() {
    stdout.write("Enter name: ");
    name = stdin.readLineSync()!;

    stdout.write("Enter name: ");
    marks = int.parse(stdin.readLineSync()!);

    stdout.write("Enter name: ");
    number = int.parse(stdin.readLineSync()!);

    print('Name is $name');
    print('Marks is $marks');
    print('Number is $number');
  }
}
