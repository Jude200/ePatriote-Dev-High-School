import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flu/models/dataBase/test.dart';
import 'package:flutter_flu/models/user.dart';
import 'package:flutter_flu/screens/Administration/page.dart';
import 'package:flutter_flu/screens/publiPage.dart';
import 'package:flutter_flu/utils/list.dart';

class CensorMenuCard extends StatefulWidget {
  final int index;
  final User user;
  const CensorMenuCard({Key key, @required this.index, @required this.user})
      : super(key: key);

  @override
  _CensorMenuCardState createState() => _CensorMenuCardState();
}

class _CensorMenuCardState extends State<CensorMenuCard> {
  @override
  Widget build(BuildContext context) {
    return widget.index == 2
        ? ListClass()
        : Container(
            //  margin: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2.0,
                  blurRadius: 1.0,
                  offset: Offset(0, 3.0))
            ]),
            child: ListTile(
              onTap: () async {
                await insertDb();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageCensor(
                            widget: widget.index == 0
                                ? PubliPage(user: widget.user)
                                : menuWidget[widget.index])));
              },
              leading: Icon(menuIcon[widget.index]),
              title: Text(menu[widget.index],
                  style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.arrow_right_outlined, color: Colors.black),
            ),
          );
  }
}

class ListClass extends StatefulWidget {
  const ListClass({Key key}) : super(key: key);

  @override
  _ListClassState createState() => _ListClassState();
}

class _ListClassState extends State<ListClass> {
  static List<String> classe = ["Seconde", "Premiere", "Terminal"];
  final List<ListTile> classItem = classe
      .map(
        (e) => ListTile(
          title: Text(e),
          trailing: Icon(Icons.arrow_right_outlined, color: Colors.black),
        ),
      )
      .toList();
  @override
  Widget build(BuildContext context) {
    return Container(
      //  margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey,
            spreadRadius: 2.0,
            blurRadius: 1.0,
            offset: Offset(0, 3.0))
      ]),
      child: ExpansionTile(
        leading: Icon(Icons.school),
        title: Text("Classe", style: TextStyle(fontWeight: FontWeight.bold)),
        children: classItem,
      ),
    );
  }
}
