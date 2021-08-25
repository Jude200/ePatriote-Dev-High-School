import 'package:flutter/material.dart';
import 'package:flutter_flu/constants.dart';
import 'package:flutter_flu/models/user.dart';
import 'package:flutter_flu/screens/StudentScreens/bullPage.dart';
import 'package:flutter_flu/screens/publiPage.dart';
import 'package:flutter_flu/widgets/drawer.dart';

class StudentHomePage extends StatefulWidget {
  final User user;
  const StudentHomePage({Key key, @required this.user}) : super(key: key);

  @override
  _StudentHomePageState createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: AppDrawer(user: widget.user),
        appBar: AppBar(
          leading: Icon(Icons.menu_book, color: Colors.black),
          backgroundColor: appBackgroundColor,
          title: Text(schoolName, style: TextStyle(color: Colors.black)),
          bottom: TabBar(
            indicatorColor: Colors.green,
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.new_label_sharp),
                    Text("   Nouvelles", style: TextStyle(color: Colors.black))
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.list),
                    Text("   Bulletins", style: TextStyle(color: Colors.black))
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [PubliPage(user: widget.user), BullPage()],
        ),
      ),
    );
  }
}
