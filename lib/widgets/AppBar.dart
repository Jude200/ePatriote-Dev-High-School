import 'package:flutter/material.dart';
import 'package:flutter_flu/constants.dart';

// J'ai fais une fonction qui retourne le widget AppBar et non une class parce qu'il y
// un probleme d'incompatibilité de type lorsqu'on fait appel a la classe
MyAppBar() {
  return AppBar(
    leading: Icon(Icons.menu_book, color: Colors.black),
    backgroundColor: appBackgroundColor,
    title: Text(schoolName, style: TextStyle(color: Colors.black)),
  );
}
