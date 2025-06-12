
import 'package:adv_flutter/import_export/import_export.dart';


class PersonView extends StatefulWidget {
  PersonView({super.key});

  @override
  State<PersonView> createState() => _StudentCRUDViewState();
}

class _StudentCRUDViewState extends State<PersonView> {
  TextEditingController _personNameController = TextEditingController();
  PersonController _personCRUDController = PersonController();
  late PersonModel oldPerson;

  bool isEditOptionActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CRUD Operation",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[200],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextFormField(
              controller: _personNameController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black54),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                setState(() {
                  PersonModel person = PersonModel(name: _personNameController.text);
                  if (isEditOptionActive) {
                    _personCRUDController.editPerson(oldPerson, person);
                    isEditOptionActive = false;
                    setState(() {});
                  } else {
                    _personCRUDController.addPerson(person);
                  }
                  _personNameController.clear();
                });
              });
            },
            child: Text(
              isEditOptionActive ? "Edit Person" : "Add Person",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.teal[200]),
          ),
          _personCRUDController.isPersonEmpty()
              ? Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_off_rounded,
                  size: 100,
                  color: Colors.black54,
                ),
                Text(
                  "No data to show!",
                  style: TextStyle(color: Colors.black54, fontSize: 25),
                ),
              ],
            ),
          )
              : Expanded(
            child: ListView.builder(
              itemCount: _personCRUDController.person.length,
              itemBuilder: (context, index) {
                PersonModel person = _personCRUDController.person[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(person.name),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isEditOptionActive = !isEditOptionActive;
                              oldPerson = person;
                              _personNameController.text = oldPerson.name;
                            });
                          },
                          icon: Icon(
                            Icons.edit_outlined,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _personCRUDController.deletePerson(
                                person,
                              );
                            });
                          },
                          icon: Icon(
                            Icons.delete_outline_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    tileColor: Colors.teal.withOpacity(0.2),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}