import 'package:adv_flutter/import_export/import_export.dart';

class RxListContoller extends GetxController {
  RxList<Map<String, dynamic>> customer_list = <Map<String, dynamic>>[].obs;
  RxList<Map<String, dynamic>> filteredList = <Map<String, dynamic>>[].obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController searchController = TextEditingController();

  void addCustomer() {
    Map<String, dynamic> customer_map = {};
    customer_map["name"] = nameController.text;
    customer_map["price"] = priceController.text;
    customer_list.add(customer_map);
    nameController.clear();
    priceController.clear();
    getCustomer();
  }

  List<Map<String, dynamic>> getCustomer() {
    // print(customer_list);
    return customer_list;
  }

  void deleteCustomer(int index) {
    customer_list.removeAt(index);
  }

  void updateCustomer(int index) {
   customer_list[index]={"name":nameController.text,"price":priceController.text};
    customer_list.refresh();
    getCustomer();
  }

  void searchCustomer(dynamic search){
    final s = search.toLowerCase();
    filteredList.value = customer_list.where((customer){
    final nameMatches = customer["name"].toLowerCase().contains(search.toLowerCase()) ?? false;
    final priceMatches = customer["price"]?.toString() ?? "";
    return nameMatches.contains(s) || priceMatches.contains(s);
    }).toList();
    print("Search Results: $filteredList");
  }
}
