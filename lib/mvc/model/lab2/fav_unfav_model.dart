class UserFavList {
  List<Map<String,dynamic>> get users => _userlist;
  List<Map<String, dynamic>> _userlist = [
    {"name": "Joe", "isFav": true},
    {"name": "Nora", "isFav": true},
    {"name": "ABC", "isFav": false},
    {"name": "MB", "isFav": false},
  ];

  void makeUserFav(String name, bool isUserFav){
    int indexOfUser = _userlist.indexWhere((element)=> element["name"]==name);
    _userlist[indexOfUser]["isFav"] = isUserFav;
  }
}
