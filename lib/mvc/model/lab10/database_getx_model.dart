import 'package:adv_flutter/import_export/import_export.dart';

class CustomerModel{
  int? _customerId;

  int? get customerId => _customerId;

  set customerId(int? value) {
    _customerId = value;
  }
  String? _customerName;

  String? get customerName => _customerName;

  set customerName(String? value) {
    _customerName = value;
  }
  CustomerModel({int? customerId, String? customerName}) : _customerName = customerName, _customerId = customerId;

  Map<String,dynamic> toMap(){
    return {"$COL_CUSTOMER_ID": customerId, "$COL_CUSTOMER_NAME":customerName};
  }

  CustomerModel fromMap(Map<String,dynamic> customerData){
    return CustomerModel(customerId: customerId, customerName: customerName);
  }

}