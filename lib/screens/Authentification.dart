import 'package:flutter/material.dart';
import 'package:flutter_flu/constants.dart';
import 'package:flutter_flu/screens/StudentScreens/StudentHomepage.dart';
import 'package:flutter_flu/screens/login.dart';
import 'package:flutter_flu/services/flushBar.dart';

class Authentification extends StatefulWidget {
  const Authentification({Key key}) : super(key: key);

  @override
  _AuthentificationState createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          Column(children: [
            Container(
              margin: EdgeInsets.only(top: height(context) / 7),
              child: Text(schoolName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: height(context) / 6),
                padding: EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 38,
                        child: Icon(
                          Icons.person,
                          size: 60,
                        )),
                    Form(
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 20, bottom: 10),
                              width: width(context) * 0.8,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: TextFormField(
                                cursorColor: Colors.black54,
                                cursorHeight: 20,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: "Nom et Prenom",
                                    prefixIcon: Icon(Icons.person)),
                              )),
                          Container(
                              margin: EdgeInsets.only(top: 20, bottom: 10),
                              width: width(context) * 0.8,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: TextFormField(
                                cursorColor: Colors.black54,
                                cursorHeight: 20,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: "Email",
                                    prefixIcon: Icon(Icons.mail)),
                              )),
                          Container(
                              margin: EdgeInsets.only(top: 20, bottom: 10),
                              width: width(context) * 0.8,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: TextFormField(
                                cursorColor: Colors.black54,
                                cursorHeight: 20,
                                obscureText: !isVisible,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: "Mot de passe",
                                    prefixIcon: Icon(Icons.password),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isVisible = !isVisible;
                                        });
                                      },
                                      icon: !isVisible
                                          ? Icon(Icons.remove_red_eye)
                                          : Icon(Icons.person),
                                    )),
                              )),
                          GestureDetector(
                            onTap: () {
                              flushBarAdd(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StudentHomePage()));
                            },
                            child: Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  "S'inscrire",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 30),
            Divider(
              indent: width(context) * 0.2,
              endIndent: width(context) * 0.2,
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Vous avez déja un compte ?"),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text("  Se connecter ?",
                          style: TextStyle(color: Colors.blue)))
                ],
              ),
            )
          ]),
        ],
      ),
    ));
  }
}
