import 'package:adv_flutter/mvc/controller/lab2/fav_unfav_controller_1.dart';
import 'package:flutter/material.dart';

class ViewFavUnfavUsers extends StatefulWidget {
  const ViewFavUnfavUsers({super.key});

  @override
  State<ViewFavUnfavUsers> createState() => _ViewFavUnfavUsersState();
}

class _ViewFavUnfavUsersState extends State<ViewFavUnfavUsers> {
  MakeUserFavUnfavController _userController = MakeUserFavUnfavController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('UserList'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _userController.userfav.length,
              itemBuilder: (context, index) {
              Map<String, dynamic> user = _userController.userfav[index];
                  
              return ListTile(
                title: Text(user["name"]),
                trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        _userController.makeFavUnfav(user["name"], !user["isFav"]);
                      });
                    },
                    icon: user["isFav"] == true
                        ? Icon(Icons.favorite,color: Colors.red,)
                        : Icon(Icons.favorite_border,color: Colors.red,)),
              );
            }),
          )
        ],
      ),
    );
  }
}
