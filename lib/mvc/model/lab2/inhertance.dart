import 'dart:io';

class Games{
  String ? game_name;
  void displayDetails(){
    print(game_name);
  }
}

class Student extends Games{

  @override
  void displayDetails();
  void takeGameName(){
    game_name = stdin.readLineSync()!;
  }
}
