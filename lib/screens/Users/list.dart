import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UsersListScreen extends StatefulWidget {
  static String id = "users/list";
  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) => ListTile(
          title: Text("Name $index"),
          leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: FadeInImage(
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                placeholder: AssetImage("assets/gifs/loading.gif"),
                image: NetworkImage(
                    "https://xsgames.co/randomusers/assets/avatars/male/$index.jpg"),
              )),
        ),
      ),
    );
  }
}
