import 'package:adv_flutter/import_export/import_export.dart';

class NonReactiveController extends GetxController{
  int counter=0;

  void increment(){
    counter++;
    // print('Counter: $counter');
    update();
  }
}