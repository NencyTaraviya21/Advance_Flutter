import 'package:adv_flutter/import_export/import_export.dart';


class CustomerRepo{
  Database? databaseService;

  CustomerRepo(this.databaseService);

  Future<void> addCustomer(tbl_name, CustomerModel customerMap) async {
    await (databaseService!.database).insert(tbl_name, customerMap.toMap());
  }

  Future<void> getCustomer() async {
    Database db = await databaseService!.database;
    List<Map<String,dynamic>> customers = await db.rawQuery('SELECT * FROM $TABLE_CUSTOMER');
    List<CustomerModel> customerList = [];
    for(var ele in customers){
      customerList.add(CustomerModel().fromMap(ele));
    }
  }
}