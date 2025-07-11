// import 'package:adv_flutter/import_export/import_export.dart';
// import 'package:get/get.dart';
//
//
// class CustomerController extends GetxController {
//   MyDatabase database = MyDatabase();
//   CustomerRepo customerRepo = CustomerRepo();
//   var customerList = <CustomerModel>[].obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     fetchCustomers();
//   }
//
//   void fetchCustomers() async {
//     final result = await customerRepo.getCustomers();
//     customerList.assignAll(result);
//   }
//
//   void addCustomer(CustomerModel customer) async {
//     await customerRepo.addCustomer(TABLE_CUSTOMER, customer);
//     fetchCustomers();
//   }
//
//   void deleteCustomer(int id) async {
//     final db = await MyDatabase.database;
//     await db.delete(TABLE_CUSTOMER, where: 'id = ?', whereArgs: [id]);
//     fetchCustomers();
//   }
//
//   void updateCustomer(CustomerModel customer) async {
//     final db = await MyDatabase.database;
//     await db.update(
//       TABLE_CUSTOMER,
//       customer.toMap(),
//       where: 'id = ?',
//       whereArgs: [customer.id],
//     );
//     fetchCustomers();
//   }
// }
