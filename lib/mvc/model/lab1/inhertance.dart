import 'package:adv_flutter/import_export/import_export.dart';

class Games{
  String ? game_name;
  void displayDetails(){
    print(game_name);
  }
}

class Captain extends Games{

  @override
  void displayDetails();
  void takeGameName(){

    game_name = stdin.readLineSync()!;
  }
}
