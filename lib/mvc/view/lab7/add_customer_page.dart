import 'package:adv_flutter/import_export/import_export.dart';


class AddCustomerPage extends StatelessWidget {
  AddCustomerPage({super.key}){
    map=Get.arguments;
  }
  RxListContoller rxContoller = Get.find();
  RxListContoller? map;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(APPBAR_ADD_EDIT_PAGE, style: TextStyle(fontSize: 30, color: Colors.red.shade900))),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: rxContoller.nameController,
            decoration: InputDecoration(
              hintText: 'Enter customer name'
            )
          ),
          TextFormField(
            controller: rxContoller.priceController,
              decoration: InputDecoration(
                  hintText: 'Enter price'
              )
          ),
          ElevatedButton(onPressed: (){
            rxContoller.addCustomer();
            Get.back();
          }, child: Text('Submit'))
        ],
      ),
    );
  }
}
