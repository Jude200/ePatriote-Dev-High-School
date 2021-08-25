// Ce code permettra d'afficher liste de tout les utilisateurs
import 'package:flutter/material.dart';
import 'package:flutter_flu/models/user.dart';
import 'package:flutter_flu/services/sqflitehelper.dart';
import 'package:flutter_flu/widgets/userCard.dart';

class ListUser extends StatefulWidget {
  const ListUser({Key key}) : super(key: key);

  @override
  _ListUserState createState() => _ListUserState();
}

class _ListUserState extends State<ListUser> {
  bool isLoading = true;
  SqfLiteHelper sqflite = SqfLiteHelper();
  List<User> userList = [];
  int userlenght;

  Future<void> getUser() async {
    List<User> cL = await sqflite.getAllUser();
    setState(() {
      userList = cL ?? [];
      userlenght = userList.length;
      isLoading = false;
    });
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  Widget getChild() {
    if (isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      if (userlenght == 0) {
        return Center(
          child: Text("Pas d'utilisateur"),
        );
      } else {
        return Expanded(
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return UserCard(
                  user: userList[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 20);
              },
              itemCount: userlenght),
        );
      }
    }
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [getChild()],
      ),
    ));
  }
}
