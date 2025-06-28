import 'package:adv_flutter/import_export/import_export.dart';

class ObxObsController extends GetxController{
  RxList<dynamic> userlist = [].obs;

  void adduser(){
    userlist.add("Nency");
    update();
  }


}