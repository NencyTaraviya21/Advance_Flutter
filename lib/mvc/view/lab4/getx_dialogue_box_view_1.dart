import 'package:adv_flutter/import_export/import_export.dart';
import 'package:adv_flutter/mvc/view/lab2/form_view.dart';

class GetxDialogBox extends StatelessWidget {
 final DialogGetxController dc = DialogGetxController();
  GetxDialogBox({super.key}) {
    Get.put(dc);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
          title: Center(child: Text("GetX dialog",style: TextStyle(color: Colors.white),)),
      ),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(onPressed:  (){
        Get.defaultDialog(
            title: "Add",
            middleText: "Do you wanna add?",
            textConfirm: "Yes",
            textCancel: "No",
            onCancel: (){
              Get.back();
            },
            onConfirm: (){
              Get.back();
            }

        );
      }, child: Text('Show dialog')),
      SizedBox(height: 20,),
      ElevatedButton(onPressed: ()async{
        Get.bottomSheet(
          Container(
            height: 500,
            child: Row(
              children: [
                Container(width: 100,),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(title: Text('Data $index'),);
                    },
                    itemCount: 10,
                  ),

                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),

        );
        await Future.delayed(Duration(seconds: 5));
        Get.back();
      }, child: Text('Show Bottomsheet')),
      SizedBox(height: 20,),
      ElevatedButton(onPressed:  (){
        Get.snackbar("Added",
            "Successfully added");
      }, child: Text('Show Snackbar')),
      SizedBox(height: 20,),
    ],
  ),
),
    );

  }
}
