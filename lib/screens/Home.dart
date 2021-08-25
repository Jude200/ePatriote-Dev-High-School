import 'package:flutter/material.dart';
import 'package:flutter_flu/constants.dart';
import 'package:flutter_flu/models/user.dart';
import 'package:flutter_flu/screens/presentation.dart';
import 'package:flutter_flu/services/flushBar.dart';
import 'package:flutter_flu/services/sqflitehelper.dart';

class Authentification extends StatefulWidget {
  const Authentification({Key key}) : super(key: key);

  @override
  _AuthentificationState createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name;
  String _email;
  String _phone;
  String _password;
  bool shouldValidate = false;
  bool isVisible = false;
  SqfLiteHelper sqfLite = SqfLiteHelper();
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
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 10),
                            width: width(context) * 0.8,
                            child: TextFormField(
                              cursorColor: Colors.black54,
                              cursorHeight: 20,
                              decoration: InputDecoration(
                                  hintText: "Nom et Prenom",
                                  prefixIcon: Icon(Icons.person)),
                              validator: (value) {
                                if ((value == null) ||
                                    (value.trim().length == 0)) {
                                  return "Le nom ne peut être vide";
                                }
                                return null;
                              },
                              onSaved: (nameInField) {
                                _name = nameInField;
                              },
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 20, bottom: 10),
                              width: width(context) * 0.8,
                              child: TextFormField(
                                cursorColor: Colors.black54,
                                cursorHeight: 20,
                                decoration: InputDecoration(
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
                              child: TextFormField(
                                maxLength: 8,
                                cursorColor: Colors.black54,
                                cursorHeight: 20,
                                decoration: InputDecoration(
                                    hintText: "Numéro de téléphone",
                                    prefixIcon: Icon(Icons.phone)),
                                validator: (value) {
                                  if ((value == null) ||
                                      (value.trim().length == 0)) {
                                    return "Le numéro de téléphone ne peut être vide";
                                  }
                                  return null;
                                },
                                onSaved: (nameInField) {
                                  _phone = nameInField;
                                },
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 10),
                            width: width(context) * 0.8,
                            child: TextFormField(
                              cursorColor: Colors.black54,
                              cursorHeight: 20,
                              obscureText: !isVisible,
                              decoration: InputDecoration(
                                  hintText: "Mot de passe",
                                  prefixIcon: Icon(Icons.password),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isVisible = !isVisible;
                                      });
                                    },
                                    icon: !isVisible
                                        ? Icon(Icons.lock)
                                        : Icon(Icons.lock_open),
                                  )),
                              validator: (value) {
                                if ((value == null) ||
                                    (value.trim().length == 0) ||
                                    value.length < 9) {
                                  return "Au moins 08 caractère";
                                }
                                return null;
                              },
                              onSaved: (nameInField) {
                                _password = nameInField;
                              },
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              bool b =
                                  _formKey.currentState?.validate() ?? false;
                              setState(() {
                                shouldValidate = true;
                              });
                              if (b) {
                                _formKey.currentState?.save();
                                User _user = User(
                                  name: _name,
                                  email: _email,
                                  phone: _phone,
                                  password: _password,
                                  date: DateTime.now().toString(),
                                  statut: "user",
                                );
                                await sqfLite.insert(_user);
                                await flushBarAdd(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Presentation(user: _user)));
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
                  TextButton(
                    onPressed: () {},
                    child: Text("S'inscrire"),
                  )
                ],
              ),
            )
          ]),
        ],
      ),
    ));
  }
}
