import 'package:adv_flutter/import_export/import_export.dart';

class DialogGetxController extends GetxController {
  RxList<String> a = <String>[].obs;

  void increment() {
    a.add("Nency");
  }
}
