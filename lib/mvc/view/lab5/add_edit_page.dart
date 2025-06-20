import 'package:adv_flutter/import_export/import_export.dart';


class UserAddEditPage extends StatelessWidget {
  NavigatePassDataController npController = Get.find<NavigatePassDataController>();
  NavigatePassDataModel? map;

  UserAddEditPage({super.key}){
    map=Get.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            TextFormField(controller: npController.nameController,),
            TextFormField(controller: npController.enrollController,),
            ElevatedButton(onPressed: (){
              npController.addUserToList();
              Get.back();
              }, child: Text('Add'))
          ],
        )
    );
  }
}
