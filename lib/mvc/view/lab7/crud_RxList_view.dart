import 'package:adv_flutter/import_export/import_export.dart';


class RxListCrudView extends StatelessWidget {
  RxListCrudView({super.key});

  RxListContoller controller = Get.put(RxListContoller());
  RxBool isFilter = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Row(
              children: [
                Text('User List',
                    style: TextStyle(fontSize: 30, color: Colors.red.shade900)),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    child: Obx(()=>
                        TextFormField(
                            controller: controller.searchController,
                            decoration: InputDecoration(
                              hintText: 'Search',
                              suffixIcon: IconButton(
                                icon: Icon(isFilter.value ? Icons.clear : Icons
                                    .search),
                                onPressed: () {
                                  if (isFilter.value) {
                                    controller.searchController.clear();
                                    controller.filteredList.assignAll(
                                        controller.customer_list); // show all
                                  } else {
                                    controller.searchCustomer(
                                        controller.searchController.text);
                                  }
                                  isFilter.toggle();
                                },
                              ),
                            )))
                ),
              ],
            ),
          ),
        ),

        body: !isFilter.value
            ? buildCustomerList()
            :buildFilteredList(),
        floatingActionButton: FloatingActionButton(
        onPressed: ()
    {
      Get.to(AddCustomerPage());
    },
    child: Text('Add'),
    ),
    );
  }

Widget buildCustomerList(){
    return Obx(
          () =>
      controller.customer_list.isNotEmpty
          ? ListView.builder(
        itemCount: controller.customer_list.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                controller.customer_list[index]["name"]
                    .toString(),
                style: TextStyle(
                    fontSize: 20, color: Colors.pinkAccent[400]),
              ),
              subtitle: Text(
                controller.customer_list[index]["price"]
                    .toString(),
                style: TextStyle(
                    fontSize: 15, color: Colors.pinkAccent[200]),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        controller.deleteCustomer(index);
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.brown[400],
                      )),
                  IconButton(
                      onPressed: () {
                        controller.nameController.text =
                        controller.customer_list[index]
                        ["name"];
                        controller.priceController.text =
                        controller.customer_list[index]
                        ["price"];
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  TextFormField(
                                    controller:
                                    controller.nameController,
                                    decoration: InputDecoration(
                                        labelText: 'update Name'),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    controller: controller
                                        .priceController,
                                    decoration: InputDecoration(
                                        labelText:
                                        'update Price'),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        controller.updateCustomer(
                                            index);
                                        Get.back();
                                      },
                                      child: Text('update'))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.edit,
                          color: Colors.brown[400])),
                ],
              ),
            ),
          );
        },
      )
          : Center(child: Text('No data Found')),
    );
}

Widget buildFilteredList() {
    return Obx(() =>
    controller.filteredList.isNotEmpty
        ? ListView.builder(
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      itemCount: controller.filteredList.length,
      itemBuilder: (context, index) {
        final item = controller.filteredList[index];
        return ListTile(
          title: Text(item["name"] ?? "No Name"),
          subtitle: Text("Price: ${item["price"] ?? "0"}"),
        );
      },
    )
        : Text(""));
  }
}


