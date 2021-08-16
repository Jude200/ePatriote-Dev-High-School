import 'package:flutter/material.dart';
import 'package:flutter_flu/constants.dart';
import 'package:flutter_flu/models/user.dart';
import 'package:flutter_flu/screens/Authentification.dart';
import 'package:flutter_flu/screens/StudentScreens/StudentHomepage.dart';
import 'package:flutter_flu/screens/presentation.dart';
import 'package:flutter_flu/services/flushBar.dart';
import 'package:flutter_flu/services/sqflitehelper.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  SqfLiteHelper sqfLite = SqfLiteHelper();
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  String _email;
  String _password;
  bool shouldValidate = false;
  User user;

  @override
  Widget build(BuildContext context) {
    bool isVisible = false;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(children: [
              Container(
                margin: EdgeInsets.only(top: height(context) / 7),
                child: Text(schoolName,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
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
                        key: _key,
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
                                      hintText: "Email",
                                      prefixIcon: Icon(Icons.mail)),
                                  validator: (value) {
                                    if ((value == null) ||
                                        (value.trim().length == 0)) {
                                      return "L'adresse mail ne peut être vide";
                                    }
                                    return null;
                                  },
                                  onSaved: (nameInField) {
                                    _email = nameInField;
                                  },
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
                                  onSaved: (nameInField) {
                                    _password = nameInField;
                                  },
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: Text("Mot de passe oublié ?",
                                      style: TextStyle(color: Colors.white)),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () async {
                                bool b = _key.currentState?.validate() ?? false;
                                setState(() {
                                  shouldValidate = true;
                                });
                                if (b) {
                                  _key.currentState?.save();
                                  user = await sqfLite.getUser(_email);
                                  if (user.password != _password) {
                                    setState(() {
                                      b = !b;
                                    });

                                    await flushBarIdentifiant(context);
                                    print(user.password);
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => user.statut ==
                                                    "user"
                                                ? Presentation(user: user)
                                                : StudentHomePage(user: user)));
                                  }
                                }
                              },
                              child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    "Se connecter",
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
                    Text("Vous n'avez pas de compte ?"),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Authentification()));
                        },
                        child: Text("  S'inscrire ?",
                            style: TextStyle(color: Colors.blue)))
                  ],
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
