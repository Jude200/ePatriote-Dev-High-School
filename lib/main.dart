import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flu/screens/Administration/sendInfo.dart';
import 'package:flutter_flu/screens/StudentScreens/StudentHomepage.dart';
import 'package:flutter_flu/services/allFunctions.dart';

import 'models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          errorStyle: TextStyle(color: Colors.white),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.5),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      home: StudentHomePage(
          user: User(
              id: 11,
              name: "Vish Xeul",
              email: "xeul@gmail.com",
              phone: "51023012",
              password: "xeul123...",
              date: formatDate("2021-10-13 22:24:32.5745"),
              statut: "parent")),
    );
  }
}
