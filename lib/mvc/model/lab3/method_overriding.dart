import 'package:adv_flutter/import_export/import_export.dart';

class Car{
  String ? car_name;
  String ? color;

  void displayCarDetails(){
    print('name is $car_name');
    print('color is $color');
  }

  void takeCarDetails(){
    car_name = stdin.readLineSync()!;
    color = stdin.readLineSync()!;
  }
}


