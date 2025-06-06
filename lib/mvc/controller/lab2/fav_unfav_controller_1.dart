import 'package:adv_flutter/import_export/import_export.dart';

class MakeUserFavUnfavController{
  UserFavList _modelfav = UserFavList();

  List<Map<String,dynamic>> get userfav => _modelfav.users;

  void makeFavUnfav(String name, bool isFav){
    _modelfav.makeUserFav(name, isFav);
  }
}