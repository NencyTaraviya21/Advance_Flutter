import 'package:adv_flutter/import_export/import_export.dart';
import 'package:adv_flutter/mvc/model/lab5/navigate_pass_data_model.dart';

class NavigatePassDataController extends GetxController {
  RxList<NavigatePassDataModel> data = <NavigatePassDataModel>[].obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController enrollController = TextEditingController();

  void addUserToList() {
    data.add(
      NavigatePassDataModel(
        name: nameController.text,
        enrollment:  enrollController.text
      ),
    );
    update();
  }
}
