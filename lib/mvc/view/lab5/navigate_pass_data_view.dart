import 'package:adv_flutter/import_export/import_export.dart';
import 'package:adv_flutter/mvc/view/lab5/add_edit_page.dart';



class NavigatePassDataView extends StatelessWidget {
  NavigatePassDataController npController = Get.put(NavigatePassDataController());

 NavigatePassDataView({super.key}){}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Center(child: Text("GetX Navigate Pass Data",style: TextStyle(color: Colors.white),)),
      ),
   body: GetBuilder<NavigatePassDataController>(
       init: npController,
       builder: (npController){
     return npController.data.isNotEmpty?
         ListView.builder(
           itemCount: npController.data.length,
             itemBuilder: (context,index){
            return ListTile(
              onTap: (){
                Get.to(
                    UserAddEditPage(),
                    arguments: npController.data[index]);
                },
              title: Text(npController.data[index].name??"no name"),
            );
         }):
     Center(child: Text("Data not found"));
   }),
      floatingActionButton: FloatingActionButton(onPressed: (){
      Get.to(
          UserAddEditPage());
      },child: Icon(Icons.add),),
    );
  }
}
