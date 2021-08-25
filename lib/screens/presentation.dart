import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flu/models/user.dart';
import 'package:flutter_flu/services/sqflitehelper.dart';
import 'package:flutter_flu/widgets/drawer.dart';
import 'package:flutter_flu/constants.dart';

import '../constants.dart';

class Presentation extends StatefulWidget {
  final User user;
  const Presentation({Key key, @required this.user}) : super(key: key);

  @override
  _PresentationState createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  SqfLiteHelper sqfLite;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: AppDrawer(user: widget.user),
      appBar: AppBar(
        backgroundColor: appBackgroundColor,
        title: Text(schoolName),
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                schoolName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                "Cum sociis natoque, penatibus et magnis dis parturient montes, nascetur ridiculus mus.  In aliquet quam et velit bibendum accumsan. Cum sociis natoque penatibus et magnis disparturient montes, nascetur ridiculus mus. Vestibulum vitae ipsum nec arcu semperadipiscing at ac lacus. Praesent id pellentesque orci. Morbi congue viverra nisl nec rhoncus.Integer mattis, ipsum a tincidunt commodo, lacus arcu elementum elit, at mollis eros ante acrisus.",
              )),
        ],
      ),
    ));
  }
}
