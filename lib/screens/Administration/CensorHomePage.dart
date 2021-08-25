import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flu/models/user.dart';
import 'package:flutter_flu/utils/list.dart';
import 'package:flutter_flu/widgets/CensorMenuCard.dart';
import 'package:flutter_flu/widgets/drawer.dart';

import '../../constants.dart';

class CensorHomePage extends StatefulWidget {
  final User user;
  const CensorHomePage({Key key, @required this.user}) : super(key: key);

  @override
  _CensorHomePageState createState() => _CensorHomePageState();
}

class _CensorHomePageState extends State<CensorHomePage> {
  int selectedIndex = 0;
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
          SizedBox(height: 30),
          Container(
            child: Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext, int index) {
                    return CensorMenuCard(
                      index: index,
                      user: widget.user,
                    );
                  },
                  separatorBuilder: (BuildContext, int index) {
                    return SizedBox(height: 30);
                  },
                  itemCount: menu.length),
            ),
          ),
        ],
      ),
    ));
  }
}
