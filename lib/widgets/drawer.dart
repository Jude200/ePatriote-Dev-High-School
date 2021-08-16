import 'package:flutter/material.dart';
import 'package:flutter_flu/constants.dart';
import 'package:flutter_flu/models/user.dart';
import 'package:flutter_flu/screens/login.dart';

class AppDrawer extends StatelessWidget {
  final User user;
  const AppDrawer({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Drawer(
        elevation: 120,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: Image.asset(defaultImage),
                accountName: Text(user.name),
                accountEmail: Text(user.email)),
            SizedBox(height: 20),
            Container(
              color: Colors.white70,
              child: GestureDetector(
                onTap: () {
                  print(DateTime.now());
                },
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Icon(Icons.settings)),
                    Container(
                        child: Text("Paramètre",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)))
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white70,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(20), child: Icon(Icons.star)),
                  Container(
                      child: Text("Notez l'application",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)))
                ],
              ),
            ),
            Container(
              color: Colors.white70,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Icon(Icons.account_balance_outlined)),
                  Container(
                      child: Text("A propos",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)))
                ],
              ),
            ),
            Container(
              color: Colors.white70,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Icon(Icons.contact_mail)),
                  Container(
                      child: Text("Nous contactez",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Container(
                color: Colors.white70,
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(20), child: Icon(Icons.logout)),
                    Container(
                        child: Text("Se deconnecter",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
