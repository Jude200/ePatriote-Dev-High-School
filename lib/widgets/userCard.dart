import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flu/models/user.dart';

class UserCard extends StatefulWidget {
  final User user;
  const UserCard({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  static List<String> statut = [
    "User",
    "Parent",
    "Eleve",
    "Professeur",
    "Censeur"
  ];
  final List<ListTile> statutItem = statut
      .map((e) => ListTile(
          onTap: () {
            print(e.toUpperCase());
          },
          leading: Icon(Icons.person_add),
          title: Text(e)))
      .toList();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 2.0,
            spreadRadius: 1.0,
            color: Colors.grey)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  widget.user.name,
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: Text(widget.user.date),
              )
            ],
          ),
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => SimpleDialog(
                        title: Text("Statut"),
                        children: statutItem,
                      ));
            },
            icon: Icon(Icons.arrow_right_outlined),
          )
        ],
      ),
    );
  }
}
