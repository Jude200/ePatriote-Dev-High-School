import 'package:flutter/material.dart';
import 'package:flutter_flu/models/user.dart';
import 'package:flutter_flu/widgets/drawer.dart';

import '../constants.dart';

class Presentation extends StatefulWidget {
  final User user;
  const Presentation({Key key, @required this.user}) : super(key: key);

  @override
  _PresentationState createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: AppDrawer(user: widget.user),
            appBar: AppBar(
              backgroundColor: appBackgroundColor,
              title: Text(schoolName),
            )));
  }
}
