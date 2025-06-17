import 'package:adv_flutter/import_export/import_export.dart';
import 'package:get/get.dart';

class getxDialogBox extends StatefulWidget {
  getxDialogBox({super.key}){
  }
  dialogGetxController dc = dialogGetxController();
  @override
  State<getxDialogBox> createState() => _getxDialogBoxState();
}

class _getxDialogBoxState extends State<getxDialogBox> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX dialog"),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.defaultDialog(title: "Do you wanna add?",
        actions: [
          TextButton(onPressed: (){

          }, child: Text('Yes')),
          TextButton(onPressed: (){}, child: Text('Yes')),
            ]);

      }),
    );
  }
}
