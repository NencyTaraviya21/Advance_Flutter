// import 'package:adv_flutter/mvc/controller/lab10/database_getx_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class CustomerView extends StatelessWidget {
//   final CustomerController controller = Get.put(CustomerController());
//
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Customers')),
//       body: Column(
//         children: [
//           Expanded(
//             child: Obx(() => ListView.builder(
//               itemCount: controller.customerList.length,
//               itemBuilder: (context, index) {
//                 final customer = controller.customerList[index];
//                 return ListTile(
//                   title: Text(customer.name),
//                   subtitle: Text(customer.email),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.edit),
//                         onPressed: () {
//                           nameController.text = customer.name;
//                           emailController.text = customer.email;
//                           _showCustomerDialog(context, isEdit: true, customer: customer);
//                         },
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.delete),
//                         onPressed: () => controller.deleteCustomer(customer.id!),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             )),
//           ),
//           ElevatedButton(
//             child: Text('Add Customer'),
//             onPressed: () => _showCustomerDialog(context),
//           )
//         ],
//       ),
//     );
//   }
//
//   void _showCustomerDialog(BuildContext context, {bool isEdit = false, Customer? customer}) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text(isEdit ? 'Edit Customer' : 'Add Customer'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             TextField(controller: nameController, decoration: InputDecoration(labelText: 'Name')),
//             TextField(controller: emailController, decoration: InputDecoration(labelText: 'Email')),
//           ],
//         ),
//         actions: [
//           TextButton(
//             child: Text('Save'),
//             onPressed: () {
//               final name = nameController.text.trim();
//               final email = emailController.text.trim();
//               if (name.isNotEmpty && email.isNotEmpty) {
//                 if (isEdit && customer != null) {
//                   final updatedCustomer = Customer(id: customer.id, name: name, email: email);
//                   controller.updateCustomer(updatedCustomer);
//                 } else {
//                   final newCustomer = Customer(name: name, email: email);
//                   controller.addCustomer(newCustomer);
//                 }
//               }
//               nameController.clear();
//               emailController.clear();
//               Navigator.pop(context);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
